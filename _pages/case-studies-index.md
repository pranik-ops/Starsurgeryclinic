---
title: "Medical Case Studies"
permalink: /case-studies/
layout: single
---
<ul>
{% for cs in site.case_studies %}
  <li><a href="{{ cs.url | relative_url }}">{{ cs.title }}</a> — {{ cs.excerpt | strip_html }}</li>
{% endfor %}
</ul>
