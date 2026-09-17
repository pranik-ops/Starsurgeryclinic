---
title: "Treatments & Services"
permalink: /treatments/
layout: single
---
<ul>
{% for t in site.treatments %}
  <li><a href="{{ t.url | relative_url }}">{{ t.title }}</a> — {{ t.excerpt | strip_html }}</li>
{% endfor %}
</ul>
