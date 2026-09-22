#!/usr/bin/env ruby
# frozen_string_literal: true

# Guards the site's single design system (assets/css/clinic.css) against
# drift: every page should reach for a CSS class, not a hand-typed
# style="" attribute or a copy-pasted hex color. Run locally with:
#   ruby script/check_theme_consistency.rb
# It also runs in CI (.github/workflows/pages.yml) and fails the build on
# any violation.

require "set"

ROOT = File.expand_path("..", __dir__)
CSS_FILE = File.join(ROOT, "assets/css/clinic.css")

EXCLUDED_DIRS = %w[_site vendor node_modules .claude .git resources].freeze
EXCLUDED_TOP_LEVEL = ["Claude outputs"].freeze

# Classes that intentionally carry no CSS rules of their own — they're page-type
# markers (useful for readability, future hooks, or QA) layered onto a shared
# utility class that does the actual styling. Add to this list only with a
# comment explaining why the class is deliberately bare.
ALLOWED_BARE_CLASSES = Set[
  "condition-page", # marker only; width comes from .content-page
  "doctor-page",    # marker only; width comes from .content-page
  "case-study"      # marker only; width comes from .content-page
].freeze

def target_files
  Dir.glob(File.join(ROOT, "**/*.{html,md}")).reject do |path|
    relative = path.sub("#{ROOT}/", "").sub("#{ROOT}\\", "")
    parts = relative.split(/[\/\\]/)
    (parts & EXCLUDED_DIRS).any? || (parts & EXCLUDED_TOP_LEVEL).any?
  end
end

def find_inline_styles(files)
  violations = []
  style_attr = /style\s*=\s*"[^"]*"/
  files.each do |file|
    File.readlines(file, encoding: "UTF-8").each_with_index do |line, idx|
      next unless line.match?(style_attr)

      violations << "#{file.sub("#{ROOT}/", "")}:#{idx + 1}  #{line.strip}"
    end
  end
  violations
end

def defined_css_classes
  css = File.read(CSS_FILE, encoding: "UTF-8")
  css.scan(/\.([a-zA-Z0-9_-]+)/).flatten.to_set
end

def find_undefined_classes(files, defined)
  class_attr = /class\s*=\s*"([^"]*)"/
  usages = Hash.new { |h, k| h[k] = [] }

  files.each do |file|
    File.readlines(file, encoding: "UTF-8").each_with_index do |line, idx|
      line.scan(class_attr).each do |(value)|
        value.split.each do |cls|
          next if cls.include?("{{") || cls.include?("{%")

          usages[cls] << "#{file.sub("#{ROOT}/", "")}:#{idx + 1}"
        end
      end
    end
  end

  usages.reject { |cls, _| defined.include?(cls) || ALLOWED_BARE_CLASSES.include?(cls) }
end

files = target_files
inline_style_violations = find_inline_styles(files)
undefined_classes = find_undefined_classes(files, defined_css_classes)

ok = true

if inline_style_violations.any?
  ok = false
  puts "✗ Inline style=\"...\" attributes found (use a class in assets/css/clinic.css instead):"
  inline_style_violations.each { |v| puts "  #{v}" }
  puts
end

if undefined_classes.any?
  ok = false
  puts "✗ Classes used in markup with no matching rule in assets/css/clinic.css:"
  undefined_classes.each do |cls, locs|
    puts "  .#{cls}  (first used at #{locs.first})"
  end
  puts
  puts "  If this class is a deliberate no-CSS marker, add it to ALLOWED_BARE_CLASSES"
  puts "  in script/check_theme_consistency.rb with a comment explaining why."
  puts
end

if ok
  puts "✓ Theme consistency check passed (#{files.size} files scanned)."
else
  puts "See assets/css/clinic.css for existing tokens (--primary, --accent, --text-muted, ...)"
  puts "and components (.card, .card-grid, .card-link, .btn, .content-page, ...) to reuse."
  exit 1
end
