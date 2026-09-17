---
title: "Our Doctors"
permalink: /doctors/
layout: single
---
<ul>
{% for d in site.doctors %}
  <li><a href="{{ d.url | relative_url }}">{{ d.title }}</a> — {{ d.credentials }}</li>
{% endfor %}
</ul>
