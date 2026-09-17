source "https://rubygems.org"

gem "jekyll", "~> 4.3"

# Theme (used as a remote_theme, but listed here so `bundle install`
# resolves its own dependencies locally for previewing)
gem "minimal-mistakes-jekyll"

group :jekyll_plugins do
  gem "jekyll-remote-theme"
  gem "jekyll-include-cache"
  gem "jekyll-sitemap"
  gem "jekyll-seo-tag"
  gem "jekyll-feed"
  gem "jekyll-paginate"
end

# Windows / JRuby compatibility shims (harmless on Linux/Mac/CI)
platforms :mingw, :x64_mingw, :mswin, :jruby do
  gem "tzinfo", ">= 1", "< 3"
  gem "tzinfo-data"
end
gem "wdm", "~> 0.1.1", :platforms => [:mingw, :x64_mingw]
