# Clarity Eye Institute — Jekyll site

Built with Jekyll + [Minimal Mistakes](https://mmistakes.github.io/minimal-mistakes/)
(via `remote_theme`), deployed to GitHub Pages through GitHub Actions.

## First-time setup

1. **Rename things:** search this repo for `YOUR-GH-USERNAME`,
   `eye-clinic-site`, and the placeholder clinic details in `_config.yml`
   (`clinic:` block) and replace with your real info.
2. **Repo settings → Pages:** set Source to **GitHub Actions** (not "Deploy
   from a branch"). The workflow in `.github/workflows/pages.yml` handles
   the rest automatically — it also injects the correct `baseurl` for you.
3. **Local preview:**
   ```bash
   bundle install
   bundle exec jekyll serve
   ```
   Visit `http://localhost:4000/eye-clinic-site/` (matches your `baseurl`).
4. **Push to `main`** — the Action builds and deploys automatically.

## Content structure

| Content type   | Where it lives     | URL pattern           |
|----------------|---------------------|------------------------|
| Conditions     | `_conditions/*.md`  | `/conditions/<slug>/`  |
| Treatments     | `_treatments/*.md`  | `/treatments/<slug>/`  |
| Doctors        | `_doctors/*.md`     | `/doctors/<slug>/`     |
| Case studies   | `_case_studies/*.md`| `/case-studies/<slug>/`|
| Standalone pages | `_pages/*.md`     | as set by `permalink`  |

Each collection item is a Markdown file with YAML front matter. Copy an
existing file (e.g. `_conditions/cataract.md`) as a template — front
matter fields like `faqs`, `short_answer`, and `schema_type` drive the
automatic FAQ blocks and JSON-LD schema, so keep those fields consistent.

## Adding a case study

1. Copy `_case_studies/case-001-corneal-trauma.md`.
2. **De-identify:** use age ranges not exact ages, no names, no dates that
   could identify the visit, and only use photos you have explicit
   consent to publish. Check your local health-privacy rules (e.g. HIPAA)
   and any hospital-advertising regulations before publishing.
3. Set `related_condition` to match a condition's `slug` so it appears in
   that condition page's "Related Case Studies" section automatically.

## GEO / SEO features already wired up

- Sitewide `MedicalClinic` JSON-LD (`_includes/head/custom.html`)
- Per-page `MedicalCondition` / `MedicalProcedure` / `Physician` /
  `MedicalScholarlyArticle` JSON-LD (in `_layouts/`)
- `FAQPage` JSON-LD generated automatically from any page's `faqs:` front
  matter (`_includes/faq-block.html`)
- `robots.txt` explicitly allowing AI crawlers (GPTBot, ClaudeBot,
  PerplexityBot, Google-Extended)
- `llms.txt` site summary for AI agents
- `jekyll-sitemap` + `jekyll-seo-tag` for classic SEO

## Design system — keep the site visually consistent

All styling lives in one file: `assets/css/clinic.css`. There is no SCSS
build step and no per-page stylesheet — every page and layout links that
one file, so it's the single source of truth for color, spacing, and
components.

- **Tokens**: colors, radius, shadow, and max-width are CSS custom
  properties on `:root` (`--primary`, `--accent`, `--text-muted`,
  `--border`, `--radius`, `--shadow`, `--max-width`, `--danger`, ...).
  Never hand-type a hex color in a page — use a token, or one of the text
  utilities below, so a future palette change only touches one file.
- **Reusable components**: `.card` / `.card-grid` / `.card-stack` /
  `.card-link` / `.card-meta`, `.btn` / `.btn-primary` / `.btn-outline` /
  `.btn-group`, `.badges` / `.badge`, `.section-alt` / `.section-tinted`,
  `.disclaimer`, `.faq-block` / `.faq-item`. `.content-page` is the shared
  reading width for detail pages (`_layouts/condition.html`,
  `doctor.html`, `case-study.html`) — add it alongside a page-type class
  rather than a one-off `max-width` on a new layout.
- **Text utilities**: `.text-accent-primary`, `.text-accent`,
  `.text-muted`, `.text-center`.
- **Rule**: no `style="..."` attributes in pages, layouts, or includes.
  If nothing existing fits, add a small named class to `clinic.css`
  (matching the naming style already there) instead of inlining one.
  This is enforced automatically — see below.

### Automated consistency check

`script/check_theme_consistency.rb` scans every page/layout/include and
fails if it finds (1) an inline `style="..."` attribute, or (2) a `class`
used in markup that has no matching rule in `clinic.css` (a good proxy for
"this element will render unstyled"). It runs in CI
(`.github/workflows/pages.yml`) on every push and PR, and you can run it
locally before committing:

```bash
ruby script/check_theme_consistency.rb
```

The `.claude/skills/website-code-review` skill also checks new pages
against this same design system during review.

## Still TODO (see the phased plan)

- [ ] Real logo, favicon, and doctor/clinic photos in `/assets/images/`
- [ ] Working contact form (Formspree or similar — GitHub Pages is static)
- [ ] More condition/treatment pages (start with your top 5 by patient volume)
- [ ] Testimonials collection + review schema
- [ ] Additional case studies from your existing files
- [ ] Custom domain + HTTPS (add a `CNAME` file, then set the custom
      domain in Pages settings)
