# Content Architecture & Scalability Plan

## Overview

This document outlines the architecture for scaling the clinic website from current state (5 conditions, 5 treatments) to mature state (20+ conditions, 20+ treatments) while maintaining consistency, SEO optimization, and internal linking strategy.

---

## 1. Collection Structure

### Conditions Collection (`_conditions/`)
```
_conditions/
├── cataract.md (example - published)
├── corneal-ulcer.md (template - ready to fill)
├── diabetic-retinopathy.md (template)
├── dry-eye-syndrome.md (template)
├── glaucoma.md (template)
└── ... (20+ at maturity)
```

**At Maturity (20-30 conditions):**
- Organize by category in mind (but not in file system)
- Use slug prefixes for organization: `anterior-segment-cataract.md`, `anterior-segment-corneal-ulcer.md`
- Create condition index with filters/categories

### Treatments Collection (`_treatments/`)
```
_treatments/
├── cataract-surgery.md (template - ready to fill)
├── corneal-transplant.md (template)
├── dry-eye-treatment.md (template)
├── glaucoma-management.md (template)
├── retinal-surgery.md (template)
└── ... (20+ at maturity)
```

---

## 2. Taxonomy & Organization

### Medical Categories (for future filtering)

**Anterior Segment:**
- Conditions: Cataract, Corneal Ulcer, Dry Eye, Corneal Abrasion, Astigmatism
- Treatments: Cataract Surgery, Corneal Transplant, LASIK, Dry Eye Treatment

**Posterior Segment/Retina:**
- Conditions: Diabetic Retinopathy, Macular Degeneration, Retinal Detachment, Vitreous Hemorrhage
- Treatments: Vitrectomy, Anti-VEGF Injection, Retinal Laser, Retinal Repair

**Glaucoma:**
- Conditions: Glaucoma (Primary, Secondary)
- Treatments: Glaucoma Medication, Laser Trabeculoplasty, Glaucoma Surgery

**Pediatric/Trauma:**
- Conditions: Amblyopia, Strabismus, Ocular Trauma, Pediatric Cataract
- Treatments: Pediatric Surgery, Trauma Repair, Strabismus Surgery

**Refractive:**
- Conditions: Myopia, Hyperopia, Presbyopia, Astigmatism
- Treatments: LASIK, PRK, IOL Implants, Refractive Surgery

---

## 3. Internal Linking Strategy

### Linking Rules

**Condition → Treatment (Relevant Only)**
```
Condition: Cataract
Links to: 
  - Cataract Surgery (primary treatment)
  - IOL Selection (related consideration)
  - NOT Glaucoma Medication
```

**Condition → Case Studies (2-3 max)**
```
Condition: Cataract
Related Case Studies shown:
  - case-005-elderly-patient-cataract (if it exists)
  - case-006-pediatric-cataract (if it exists)
  - Maximum 3 per condition page
```

**Treatment → Conditions (All relevant)**
```
Treatment: Cataract Surgery
Links to:
  - Cataract (primary indication)
  - Traumatic Cataract (secondary indication)
  - Post-Refractive Surgery Cataract (tertiary)
```

**Treatment → Case Studies (2-3 max)**
```
Treatment: Cataract Surgery
Shows:
  - case-004-post-operative-cataract (if related)
  - Maximum 3 per treatment page
```

**Case Study → Condition & Treatment**
```
Case Study: case-004-tennis-ball-trauma-cme
Links to:
  - Condition: Vitreous/Retinal Trauma
  - Treatment: Intravitreal Anti-VEGF Therapy
  - Doctor: Dr. Amita Yadav
```

---

## 4. Content Front Matter Standards

### Condition Page Front Matter
```yaml
---
title: "[Condition Name]"
slug: [condition-slug]
medical_category: "Anterior Segment"  # For future organization
icd_codes: 
  - code: "H26.9"
    name: "Unspecified cataract"
related_treatments:
  - slug: cataract-surgery
  - slug: iop-management
related_case_studies: 
  - slug: case-004-tennis-ball-trauma-cme
  - slug: case-005-future-case
meta_description: "[Condition name]: symptoms, diagnosis & treatment options in Gurugram. Dr. Amita Yadav specialist."
---
```

### Treatment Page Front Matter
```yaml
---
title: "[Treatment/Procedure Name]"
slug: [treatment-slug]
medical_category: "Anterior Segment Surgery"
procedure_code: "66999"  # CPT code if applicable
related_conditions:
  - slug: cataract
  - slug: post-refractive-cataract
related_case_studies:
  - slug: case-004-tennis-ball-trauma-cme
meta_description: "[Treatment name] in Gurugram by Dr. Amita Yadav. [Key benefit]. Book appointment."
---
```

---

## 5. Index & Archive Pages

### Condition Index (`_pages/conditions-index.md`)
```
# Conditions We Treat

## By Category
- **Anterior Segment:** Cataract, Corneal Ulcer, Dry Eye, Corneal Abrasion
- **Posterior Segment:** Diabetic Retinopathy, Macular Degeneration, Retinal Detachment
- **Glaucoma:** Glaucoma, Ocular Hypertension
- **Pediatric:** Amblyopia, Strabismus, Pediatric Cataract

## Alphabetical
- [Amblyopia](/conditions/amblyopia/)
- [Astigmatism](/conditions/astigmatism/)
- [Cataract](/conditions/cataract/)
...

## Emergency Conditions
- [Ocular Trauma](/conditions/ocular-trauma/) — 24/7 Emergency
- [Hyphema](/conditions/hyphema/) — 24/7 Emergency
- [Corneal Foreign Body](/conditions/corneal-foreign-body/) — 24/7 Emergency
```

### Treatment Index (`_pages/treatments-index.md`)
```
# Treatments & Services

## By Category
- **Anterior Segment Surgery:** Cataract Surgery, Corneal Transplant, LASIK
- **Vitreoretinal:** Vitrectomy, Anti-VEGF Therapy, Retinal Repair
- **Glaucoma Surgery:** Trabeculectomy, MIGS, Cyclophotocoagulation
- **Pediatric:** Pediatric Surgery, Amblyopia Treatment

## Surgical Procedures
- [Cataract Surgery](/treatments/cataract-surgery/)
- [Corneal Transplant](/treatments/corneal-transplant/)
- [Vitrectomy](/treatments/vitrectomy/)

## Medical Management
- [Dry Eye Treatment](/treatments/dry-eye-treatment/)
- [Glaucoma Medication](/treatments/glaucoma-medication/)
- [Anti-VEGF Therapy](/treatments/anti-vegf-therapy/)

## 24/7 Emergency Procedures
- [Ocular Trauma Repair](/treatments/trauma-repair/) — Available 24/7
- [Foreign Body Removal](/treatments/foreign-body-removal/) — Available 24/7
```

---

## 6. Breadcrumb Navigation Schema

Every page should include breadcrumbs for:
- **Accessibility** (users can navigate)
- **SEO** (search engines understand hierarchy)
- **AI agents** (clear content organization)

### Example Breadcrumb Paths

**Condition Page:**
```
Home > Conditions > Cataract
```

**Treatment Page:**
```
Home > Treatments > Cataract Surgery
```

**Case Study Page:**
```
Home > Case Studies > Case 4: Tennis Ball Trauma
```

**Doctor Page:**
```
Home > Doctors > Dr. Amita Yadav
```

### Breadcrumb Schema (JSON-LD)
```json
{
  "@context": "https://schema.org",
  "@type": "BreadcrumbList",
  "itemListElement": [
    {
      "@type": "ListItem",
      "position": 1,
      "name": "Home",
      "item": "https://example.com"
    },
    {
      "@type": "ListItem",
      "position": 2,
      "name": "Conditions",
      "item": "https://example.com/conditions"
    },
    {
      "@type": "ListItem",
      "position": 3,
      "name": "Cataract",
      "item": "https://example.com/conditions/cataract"
    }
  ]
}
```

---

## 7. Scalability Considerations (20+ Content Items)

### Performance
- **At 5-10 items:** Current architecture is fine
- **At 10-20 items:** Consider pagination on index pages
- **At 20+ items:** Implement filters/categories in index pages

### Organization
- Use consistent slug naming (`anterior-segment-cataract`)
- Keep front matter consistent across all pages
- Use category fields for filtering

### Future Enhancement: Category Pages
```
_categories/
├── anterior-segment.md
├── posterior-segment.md
├── glaucoma.md
├── pediatric.md
└── emergency.md
```

These would list all conditions/treatments in that category.

---

## 8. Internal Linking Implementation

### Liquid Template Example (Jekyll)
```liquid
{%- assign related_treatments = site.treatments | where_exp: "item", "page.related_treatments contains item.slug" -%}

{% if related_treatments.size > 0 %}
## Related Treatments
{% for treatment in related_treatments %}
- [{{ treatment.title }} →]({{ treatment.url | relative_url }})
{% endfor %}
{% endif %}

{%- assign related_cases = site.case_studies | where: "related_condition", page.slug | limit: 3 -%}

{% if related_cases.size > 0 %}
## See Real Cases
{% for case in related_cases %}
- [{{ case.title }} →]({{ case.url | relative_url }})
{% endfor %}
{% endif %}
```

---

## 9. Content Prioritization

### Phase 1 (Immediate - Weeks 1-2)
**5 Conditions + 5 Treatments + Index Pages**
- Start with most common conditions by patient volume
- Create templates ready to fill

Suggested conditions:
1. Cataract (already done)
2. Corneal Ulcer
3. Diabetic Retinopathy
4. Dry Eye Syndrome
5. Glaucoma

Suggested treatments:
1. Cataract Surgery (create from template)
2. Corneal Transplant
3. Anti-VEGF Therapy (already case study)
4. Glaucoma Laser
5. Retinal Repair

### Phase 2 (Months 1-2)
Add 5-10 more high-value conditions/treatments

### Phase 3 (Months 2-6)
Expand to 20+ items based on:
- Patient search patterns
- Competitive analysis
- Clinic specializations

---

## 10. Meta Description Strategy

### Template Patterns

**Condition Pages:**
```
[Condition]: symptoms, diagnosis & treatment options in Gurugram. Dr. Amita Yadav specialist. Star Eye Center. 24/7 emergency available.
```

**Treatment Pages:**
```
[Treatment] in Gurugram by Dr. Amita Yadav. [Key benefit - success rate/recovery time]. Book appointment. Star Eye Center.
```

**Case Study Pages:**
```
[Clinical summary]: patient age, condition, outcome. [Key learning]. Dr. Amita Yadav, Star Eye Center.
```

---

## 11. File Checklist for Each New Condition

- [ ] Create `_conditions/[slug].md`
- [ ] Add front matter with title, slug, ICD codes
- [ ] Add related_treatments array
- [ ] Add related_case_studies array
- [ ] Write content sections (Overview, Symptoms, Risk Factors, Diagnosis, Treatment, FAQs)
- [ ] Add meta description
- [ ] Link from treatments that address this condition
- [ ] Update condition index page
- [ ] Test breadcrumb navigation
- [ ] Commit and push

## File Checklist for Each New Treatment

- [ ] Create `_treatments/[slug].md`
- [ ] Add front matter with title, slug, procedure codes
- [ ] Add related_conditions array
- [ ] Add related_case_studies array
- [ ] Write content sections (What Is It, Who Is It For, Before, Procedure, After, Risks, Timeline)
- [ ] Add meta description
- [ ] Link from conditions that benefit from this treatment
- [ ] Update treatment index page
- [ ] Test breadcrumb navigation
- [ ] Commit and push

---

This architecture supports scaling from 5 items to 20+ while maintaining consistency, SEO optimization, and user experience.
