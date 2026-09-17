---
title: "Contact & Appointments"
permalink: /contact/
layout: single
---

## Book an Appointment

📞 Call us at [{{ site.clinic.phone }}](tel:{{ site.clinic.phone }})
✉️ Email [{{ site.clinic.email }}](mailto:{{ site.clinic.email }})

*(Replace with a real booking form or embed — GitHub Pages is static, so
use a service like Formspree, Netlify Forms via a proxy, Calendly, or a
simple `mailto:` link/tel link for launch. A JS-based form that POSTs to
Formspree is the fastest way to get a working contact form on a static
site.)*

## Location & Hours

📍 {{ site.clinic.address.street }}, {{ site.clinic.address.city }},
{{ site.clinic.address.region }} {{ site.clinic.address.postal_code }}

🕐 {{ site.clinic.hours }}

<iframe
  src="https://www.google.com/maps?q={{ site.clinic.geo.latitude }},{{ site.clinic.geo.longitude }}&output=embed"
  width="100%" height="350" style="border:0" loading="lazy"
  title="Map to {{ site.clinic.legal_name }}">
</iframe>
