# How to Add New Case Studies

This folder contains case studies for the website. Each case is a Markdown file with medical schema and patient-educational content.

## Quick Start: Adding Your Next Case Study

### Step 1: Copy the Template
1. Copy `CASE-STUDY-TEMPLATE.md` 
2. Rename it: `case-XXX-descriptive-name.md`
   - Use the next case number (e.g., `case-004-...`, `case-005-...`)
   - Use hyphens in the slug, no spaces
   - Example: `case-004-diabetic-retinopathy-management.md`

### Step 2: Fill Out the Front Matter (Between `---` markers)

```yaml
---
title: "Full clinical title of the case"
slug: case-XXX-slug  # This determines the URL
related_condition: ocular-trauma  # Links to a condition page (optional)
patient_age_range: "Age or age range"
treatment_duration: "How long treatment took"
outcome: "One-line summary of result"
specialty: "Your specialty area"

schema_json: |
  {JSON-LD schema here}
---
```

**Key fields:**
- `title`: What appears on the page and in search results
- `slug`: Used to create the URL (e.g., `/case-studies/case-004-slug/`)
- `related_condition`: If the case relates to a condition page (e.g., `cataract`, `ocular-trauma`), it will appear in that condition's "Related Case Studies" section
- `schema_json`: JSON-LD for SEO and AI agents

### Step 3: Fill Out the Content Sections

Follow these sections in order:

1. **Diagnosis & Medical Taxonomy**
   - State the primary condition clearly
   - Include ICD-10 codes with descriptions
   - List relevant MeSH terms

2. **Baseline Presentation**
   - Patient demographics (age range, no names)
   - What brought them in?
   - Initial findings and imaging

3. **Intervention**
   - Break into phases if multi-step (Phase 1, Phase 2, etc.)
   - Explain what was done and why
   - Include timing between phases if relevant

4. **Objective Endpoint Outcome**
   - When was this measured?
   - Visual acuity before and after
   - Imaging or anatomical findings

5. **Key Clinical Takeaway for Patients**
   - Plain-language summary
   - Why this case matters to potential patients
   - What they should know

### Step 4: De-identification Checklist

Before publishing, ensure:
- [ ] No patient names, initials, or identifiable details
- [ ] Use age ranges, not exact ages (e.g., "30s" or "45–55")
- [ ] No specific dates that could identify the visit
- [ ] No hospital/clinic identifying details
- [ ] Only use photos with explicit consent (add to `/assets/images/case-studies/`)
- [ ] Comply with local health-privacy rules (HIPAA, etc.)

### Step 5: Commit & Push

```bash
cd Starsurgeryclinic
git add _case_studies/case-XXX-your-slug.md
git add assets/images/case-studies/your-images.jpg  # if adding images
git commit -m "Add case study: [brief title]

Co-Authored-By: Claude Haiku 4.5 <noreply@anthropic.com>"
git push
```

**That's it!** The case study appears on the site within a few minutes at:
- `https://pranik-ops.github.io/Starsurgeryclinic/case-studies/case-XXX-your-slug/`
- Plus it's listed on the main [Case Studies](/case-studies/) page

---

## Example: Linking to Related Conditions

If your case study is about a patient with cataracts treated surgically, set:

```yaml
related_condition: cataract
```

Then the case will automatically appear in the "Related Case Studies" section of the Cataract condition page.

---

## Medical Taxonomy: Where to Find ICD-10 & MeSH

- **ICD-10 Codes:** https://www.cms.gov/medicare/icd-10 or your EMR
- **MeSH Terms:** https://meshb.nlm.nih.gov (search for your condition)

---

## File Naming Convention

```
case-001-corneal-trauma.md         ← existing
case-002-pediatric-corneoscleral-perforation.md  ← existing
case-003-subhyaloid-hemorrhage-cme.md  ← existing
case-004-your-new-case.md         ← next one
```

Keep the numbering sequential for clarity.

---

## Tips for Great Case Studies

1. **Focus on educational value:** What can other patients learn?
2. **Use "Key Clinical Takeaway"** to call out the most important lesson
3. **Be medically precise:** ICD-10, MeSH, anatomical terms matter for SEO and credibility
4. **Be patient-friendly:** The "Key Clinical Takeaway" should be understandable by non-doctors
5. **Show outcomes:** Before/after visuals (VA, imaging) matter to potential patients
6. **Respect privacy:** De-identify rigorously

---

## Need to Edit an Existing Case?

Just edit the file and push:

```bash
git add _case_studies/case-XXX.md
git commit -m "Update case study: [brief description]"
git push
```

Changes appear live within a few minutes.
