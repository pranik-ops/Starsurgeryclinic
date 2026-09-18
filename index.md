---
layout: default
title: "Comprehensive Eye Care & Ocular Trauma Center"
permalink: /
---

{% include hero.html 
  eyebrow="Advanced Ophthalmic Care"
  title="Emergency Eye Care & Trauma Services in Gurgaon"
  description="24/7 comprehensive ophthalmology care with expertise in emergency trauma, cataract surgery, and retinal conditions."
  primary_btn_text="View Conditions Treated"
  primary_btn_url="/conditions/"
  secondary_btn_text="Emergency Contact"
  secondary_btn_url="tel:+91-7303773733"
%}

{% include stats-bar.html %}

<section class="why-section">
  <h2>Why Choose Star Eye Center</h2>
  <p class="section-intro">A dedicated clinic offering specialized, experienced eye care with 24/7 emergency services.</p>
  <div class="why-grid">
    <div class="why-card">
      <span class="why-number">01</span>
      <h3>24/7 Emergency Care</h3>
      <p>Round-the-clock emergency trauma unit for acute eye injuries and urgent conditions requiring immediate intervention.</p>
    </div>
    <div class="why-card">
      <span class="why-number">02</span>
      <h3>Comprehensive Surgery</h3>
      <p>Full-spectrum ophthalmic surgery capabilities including corneal repair, cataract extraction, and IOL implantation.</p>
    </div>
    <div class="why-card">
      <span class="why-number">03</span>
      <h3>Evidence-Based Approach</h3>
      <p>Clinical decisions driven by current medical literature, detailed case documentation, and patient-centered outcomes.</p>
    </div>
    <div class="why-card">
      <span class="why-number">04</span>
      <h3>Multi-Specialty Services</h3>
      <p>Coordinated eye and general surgery services for complex cases requiring integrated ophthalmology care.</p>
    </div>
  </div>
</section>

<section>
  <h2>Conditions We Treat</h2>
  <p class="section-intro">We diagnose and manage a wide range of eye conditions with specialized expertise in trauma and emergency care.</p>
  <div class="card-grid">
    {% for c in site.conditions limit:6 %}
      <div class="card">
        <h3><a href="{{ c.url | relative_url }}" style="text-decoration: none; color: inherit;">{{ c.title }}</a></h3>
        {% if c.short_answer %}
          <p>{{ c.short_answer }}</p>
        {% endif %}
      </div>
    {% endfor %}
  </div>
  <p style="text-align: center; margin-top: 2rem;">
    <a href="{{ '/conditions/' | relative_url }}" class="btn btn-primary">View All Conditions</a>
  </p>
</section>

<section class="section-alt">
  <h2>Treatments & Services</h2>
  <p class="section-intro">From routine eye care to emergency surgical intervention — comprehensive treatment options under one roof.</p>
  <div class="card-grid">
    {% for t in site.treatments limit:6 %}
      <div class="card">
        <h3><a href="{{ t.url | relative_url }}" style="text-decoration: none; color: inherit;">{{ t.title }}</a></h3>
        {% if t.short_answer %}
          <p>{{ t.short_answer }}</p>
        {% endif %}
      </div>
    {% endfor %}
  </div>
  <p style="text-align: center; margin-top: 2rem;">
    <a href="{{ '/treatments/' | relative_url }}" class="btn btn-primary">View All Treatments</a>
  </p>
</section>

<section>
  <h2>Our Medical Team</h2>
  <p class="section-intro">Ophthalmology professionals dedicated to evidence-based eye care and emergency trauma management.</p>
  <div class="card-grid">
    {% for d in site.doctors %}
      <div class="card">
        <h3><a href="{{ d.url | relative_url }}" style="text-decoration: none; color: inherit;">{{ d.title }}</a></h3>
        {% if d.credentials %}
          <p><strong>{{ d.credentials }}</strong></p>
        {% endif %}
        {% if d.specialties %}
          <p style="font-size: 0.9rem; color: #5a6b6b;">
            {% for specialty in d.specialties %}
              {{ specialty }}{% unless forloop.last %} • {% endunless %}
            {% endfor %}
          </p>
        {% endif %}
      </div>
    {% endfor %}
  </div>
</section>

<section class="section-alt">
  <h2>Clinical Case Studies</h2>
  <p class="section-intro">Learn from our published case studies demonstrating surgical outcomes and clinical management approaches.</p>
  <div class="card-grid">
    {% for cs in site.case_studies limit:3 %}
      <div class="card">
        <h3><a href="{{ cs.url | relative_url }}" style="text-decoration: none; color: inherit;">{{ cs.title }}</a></h3>
        {% if cs.patient_age_range %}
          <p><strong>Patient:</strong> {{ cs.patient_age_range }}</p>
        {% endif %}
        {% if cs.outcome %}
          <p><strong>Outcome:</strong> {{ cs.outcome }}</p>
        {% endif %}
      </div>
    {% endfor %}
  </div>
  <p style="text-align: center; margin-top: 2rem;">
    <a href="{{ '/case-studies/' | relative_url }}" class="btn btn-primary">View All Case Studies</a>
  </p>
</section>

<section>
  <h2>Visit Us</h2>
  <p class="section-intro">{{ site.clinic.legal_name }} — Available 24/7 for emergency services.</p>
  <div style="max-width: 640px; margin: 0 auto; text-align: center;">
    <p><strong>📍 Location</strong></p>
    <p>{{ site.clinic.address.street }}<br>
    {{ site.clinic.address.city }}, {{ site.clinic.address.region }} {{ site.clinic.address.postal_code }}</p>
    
    <p><strong>📞 Contact</strong></p>
    <p><a href="tel:{{ site.clinic.phone }}" class="btn btn-primary" style="margin: 0.5rem;">{{ site.clinic.phone }}</a></p>
    
    <p><strong>🕐 Hours</strong></p>
    <p>{{ site.clinic.hours }}</p>
    
    <p style="margin-top: 2rem;">
      <a href="{{ '/contact/' | relative_url }}" class="btn btn-primary">Book an Appointment</a>
    </p>
  </div>
</section>
