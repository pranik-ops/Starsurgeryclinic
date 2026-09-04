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

## Still TODO (see the phased plan)

- [ ] Real logo, favicon, and doctor/clinic photos in `/assets/images/`
- [ ] Working contact form (Formspree or similar — GitHub Pages is static)
- [ ] More condition/treatment pages (start with your top 5 by patient volume)
- [ ] Testimonials collection + review schema
- [ ] Additional case studies from your existing files
- [ ] Custom domain + HTTPS (add a `CNAME` file, then set the custom
      domain in Pages settings)
