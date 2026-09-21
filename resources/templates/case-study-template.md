---
title: "[CASE TITLE: Descriptive clinical condition + intervention]"
slug: case-XXX-descriptive-slug
related_condition: ocular-trauma  # or other condition slug (e.g., cataract, diabetic-retinopathy)
patient_age_range: "Age or age range"
treatment_duration: "Duration (e.g., '2 weeks', '3 months')"
outcome: "One-line outcome summary"
specialty: "Medical specialty (e.g., Ocular Trauma & Pediatric Ophthalmology)"

schema_json: |
  {
    "@context": "https://schema.org",
    "@type": "MedicalWebPage",
    "name": "[Title of the case]",
    "author": {
      "@type": "Physician",
      "name": "Dr. Amita Yadav",
      "medicalSpecialty": "Ophthalmology"
    },
    "about": [
      {
        "@type": "MedicalCondition",
        "name": "[Primary condition name]",
        "code": {
          "@type": "MedicalCode",
          "code": "[ICD-10 CODE]",
          "codingSystem": "ICD-10-CM"
        }
      },
      {
        "@type": "MedicalCondition",
        "name": "[Secondary condition if applicable]",
        "code": {
          "@type": "MedicalCode",
          "code": "[ICD-10 CODE]",
          "codingSystem": "ICD-10-CM"
        }
      },
      {
        "@type": "MedicalTherapy",
        "name": "[Treatment/procedure name]"
      }
    ]
  }
---

**Status:** De-identified clinical educational record

## Diagnosis & Medical Taxonomy

**Primary Condition:** [Clear statement of the primary diagnosis]

**ICD-10 Codes:**
- `[CODE]` — [Description]
- `[CODE]` — [Description]

**MeSH Terms:** [Relevant MeSH terms separated by semicolon]

---

## Baseline Presentation

**Patient Profile:** [Age, demographics, presenting complaint, timeframe of presentation]

**Initial Evaluation:** [What was found on examination?]

**Diagnostics:** 
- [Test 1]: [Finding]
- [Test 2]: [Finding]

---

## Intervention

### [Phase 1 if applicable]
- **Procedure:** [What was done?]
- **Technique:** [How was it done?]
- **Goal:** [What was the aim?]

### [Phase 2 if applicable]
- **Timing:** [When was this done relative to Phase 1?]
- **Procedure:** [What was done?]
- **Goal:** [What was the aim?]

---

## Objective Endpoint Outcome

**Follow-Up Interval:** [Time point of assessment]

**Visual Acuity:**
- [Eye affected]: [Starting VA] → [Final VA]

**Imaging/Anatomical Findings:**
- [What improved or changed?]

---

## Key Clinical Takeaway for Patients

[One-paragraph plain-language summary: What happened, what was the key intervention, what's the outcome lesson?]

---

**Surgeon:** Dr. Amita Yadav, MBBS, MS (Ophthalmology), [Specialty]
