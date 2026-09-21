# Case Study Templates & Standards

This folder contains templates and guidelines for creating standardized medical case studies for the Star Eye Center website. These resources help maintain consistency across all clinical documentation and ensure SEO optimization through proper schema markup.

## Files

- **case-study-template.md** — The standard template for all new case studies. Use this as a starting point for new cases.
- **HOW-TO-ADD-CASES.md** — Step-by-step guide for adding new case studies to the website.
- **README.md** — This file.

## Template Structure

Every case study should follow this structure:

### Front Matter (YAML)
```yaml
---
title: "[Clinical title of the case]"
slug: case-XXX-descriptive-slug
related_condition: condition-slug  # links to condition page
patient_age_range: "Age or range"
treatment_duration: "Duration"
outcome: "One-line outcome"
specialty: "[Specialty area]"

schema_json: |
  {JSON-LD schema for SEO}
---
```

### Content Sections
1. **Diagnosis & Medical Taxonomy** — ICD-10 codes, MeSH terms
2. **Baseline Presentation** — Patient demographics, initial findings, diagnostics
3. **Intervention** (or Treatment) — What was done, in phases if applicable
4. **Objective Endpoint Outcome** — Follow-up interval, visual acuity, imaging results
5. **Key Clinical Takeaway for Patients** — Plain-language summary of why this case matters

## Medical Taxonomy Standards

- **ICD-10 Codes:** Use official ICD-10-CM codes (https://www.cms.gov/medicare/icd-10)
- **MeSH Terms:** Use official MeSH descriptors (https://meshb.nlm.nih.gov)
- **Physician Attribution:** All case studies should be credited to **Dr. Amita Yadav, MBBS, MS (Ophthalmology)**
- **Clinic Location:** Gurugram, Haryana, India

## JSON-LD Schema

Each case study includes a JSON-LD schema in the front matter for:
- SEO optimization (Google, Bing, other search engines)
- AI agent indexing (used by Claude, ChatGPT, and other LLMs)
- Structured medical data extraction

The schema includes:
- `@type: MedicalWebPage`
- Author (Physician): Dr. Amita Yadav
- About (related conditions and therapies with ICD-10 codes)

## File Naming Convention

```
case-001-corneal-trauma.md
case-002-pediatric-corneoscleral-perforation.md
case-003-subhyaloid-hemorrhage-cme.md
case-004-tennis-ball-trauma-cme.md
case-005-your-next-case.md
```

Keep numbering sequential for clarity.

## De-identification Checklist

Before publishing, ensure:
- [ ] No patient names, initials, or identifiable details
- [ ] Use age ranges, not exact ages
- [ ] No specific dates that could identify the visit
- [ ] No hospital/clinic identifying details
- [ ] Comply with local health-privacy rules (HIPAA, etc.)

## Usage Instructions for Claude (AI Assistant)

When translating or converting case studies to the standard template:

1. **Extract key information:**
   - Clinical diagnosis (with ICD-10 codes)
   - Patient demographics (age range only, de-identified)
   - Baseline presentation (findings, imaging)
   - Treatment/intervention (what was done, how long)
   - Outcome (visual acuity, imaging results, follow-up interval)

2. **Structure JSON-LD schema:**
   - Author: Dr. Amita Yadav
   - Medical conditions with ICD-10 codes
   - Medical therapies/procedures

3. **Write sections:**
   - Keep medical terminology precise
   - Make "Key Clinical Takeaway" patient-friendly
   - Ensure all data is de-identified

4. **Validate:**
   - Confirm ICD-10 and MeSH codes are correct
   - Verify all placeholders are replaced
   - Ensure date and location information cannot identify patient

## Related Files in Repository

- `_case_studies/` — Published case studies (do not include templates here)
- `_config.yml` — Site configuration (excludes resources/ from publication)
- `_layouts/case-study.html` — HTML template for rendering case studies
