---
layout: default
title: "Comprehensive Eye Care & Ocular Trauma Center"
permalink: /
---

{% include hero.html 
  eyebrow="24/7 Emergency Ophthalmology"
  title="Comprehensive Eye Care & Ocular Trauma Services"
  description="Expert emergency eye care, trauma surgery, and specialized treatments in Gurgaon. Available round-the-clock for urgent cases."
  primary_btn_text="Explore Our Services"
  primary_btn_url="/treatments/"
  secondary_btn_text="Emergency: +91-7303 773 733"
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
  <h2>Our Services Overview</h2>
  <p class="section-intro">Complete eye care solutions from routine exams to emergency trauma surgery.</p>
  
  <div class="card-grid" style="max-width: 1100px; margin: 0 auto;">
    <a href="{{ '/conditions/' | relative_url }}" class="card" style="text-decoration: none; cursor: pointer; transition: all 0.3s ease;">
      <h3 style="color: #0f6e6e; margin-top: 0;">👁️ Conditions We Treat</h3>
      <p>Learn about eye conditions we diagnose and manage, with expertise in emergency trauma care and specialized procedures.</p>
      <strong style="color: #1d6fbf;">Explore →</strong>
    </a>
    
    <a href="{{ '/treatments/' | relative_url }}" class="card" style="text-decoration: none; cursor: pointer; transition: all 0.3s ease;">
      <h3 style="color: #0f6e6e; margin-top: 0;">🏥 Treatments & Services</h3>
      <p>Comprehensive surgical and non-surgical treatment options including cataract surgery, trauma repair, and more.</p>
      <strong style="color: #1d6fbf;">Explore →</strong>
    </a>
    
    <a href="{{ '/doctors/' | relative_url }}" class="card" style="text-decoration: none; cursor: pointer; transition: all 0.3s ease;">
      <h3 style="color: #0f6e6e; margin-top: 0;">👨‍⚕️ Our Medical Team</h3>
      <p>Meet our experienced ophthalmologists dedicated to evidence-based eye care and emergency trauma management.</p>
      <strong style="color: #1d6fbf;">Meet Our Team →</strong>
    </a>
    
    <a href="{{ '/case-studies/' | relative_url }}" class="card" style="text-decoration: none; cursor: pointer; transition: all 0.3s ease;">
      <h3 style="color: #0f6e6e; margin-top: 0;">📋 Clinical Case Studies</h3>
      <p>Learn from published case studies demonstrating our surgical expertise and successful patient outcomes.</p>
      <strong style="color: #1d6fbf;">View Cases →</strong>
    </a>
    
    <a href="{{ '/contact/' | relative_url }}" class="card" style="text-decoration: none; cursor: pointer; transition: all 0.3s ease;">
      <h3 style="color: #0f6e6e; margin-top: 0;">📞 Contact & Directions</h3>
      <p>Find us on the map, get directions, and book your appointment or emergency consultation with us.</p>
      <strong style="color: #1d6fbf;">Contact Us →</strong>
    </a>
  </div>
</section>

<section>
  <h2>Quick Contact</h2>
  <div style="max-width: 640px; margin: 0 auto; text-align: center;">
    <div class="card" style="margin-bottom: 1.5rem;">
      <h3>📍 Our Location</h3>
      <p>
        {{ site.clinic.address.street }}<br>
        {{ site.clinic.address.city }}, {{ site.clinic.address.region }} {{ site.clinic.address.postal_code }}
      </p>
    </div>
    
    <div class="card" style="margin-bottom: 1.5rem;">
      <h3>🕐 Hours</h3>
      <p>{{ site.clinic.hours }}</p>
    </div>
    
    <p style="margin-top: 2rem;">
      <a href="tel:{{ site.clinic.phone }}" class="btn btn-primary" style="margin: 0.5rem;">
        Call: {{ site.clinic.phone }}
      </a>
      <a href="{{ '/contact/' | relative_url }}" class="btn btn-primary" style="margin: 0.5rem;">
        Book Appointment
      </a>
    </p>
  </div>
</section>
