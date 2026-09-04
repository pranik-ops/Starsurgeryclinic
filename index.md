---
layout: single
title: "Comprehensive Eye Care & Ocular Trauma Center"
permalink: /
---
{% include emergency-banner.html %}

# {{ site.clinic.legal_name }}

{{ site.description }}

## Conditions We Treat

<ul>
{% for c in site.conditions limit:6 %}
  <li><a href="{{ c.url | relative_url }}">{{ c.title }}</a></li>
{% endfor %}
</ul>
[See all conditions →](/conditions/)

## Treatments & Services

<ul>
{% for t in site.treatments limit:6 %}
  <li><a href="{{ t.url | relative_url }}">{{ t.title }}</a></li>
{% endfor %}
</ul>
[See all treatments →](/treatments/)

## Our Doctors

<ul>
{% for d in site.doctors %}
  <li><a href="{{ d.url | relative_url }}">{{ d.title }}</a> — {{ d.credentials }}</li>
{% endfor %}
</ul>

## Recent Case Studies

<ul>
{% for cs in site.case_studies limit:3 %}
  <li><a href="{{ cs.url | relative_url }}">{{ cs.title }}</a></li>
{% endfor %}
</ul>
[See all case studies →](/case-studies/)

## Visit Us

📍 {{ site.clinic.address.street }}, {{ site.clinic.address.city }},
{{ site.clinic.address.region }} {{ site.clinic.address.postal_code }}
📞 [{{ site.clinic.phone }}](tel:{{ site.clinic.phone }})
🕐 {{ site.clinic.hours }}

[Book an Appointment](/contact/){: .btn .btn--primary}
