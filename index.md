---
layout: home
title: home
---

<section class="post-section">
  <div class="section-head">
    <span class="section-label">notes</span>
    <div class="section-rule"></div>
  </div>

  {% assign note_tags = "notes,personal,practice,academic,interests" | split: "," %}
  {% assign note_labels = "all,personal,practice,academic,interests" | split: "," %}

  {% for tag in note_tags %}
    {% assign tagged = site.posts | where_exp: "post", "post.tags contains tag" %}
    {% if tagged.size > 0 %}
  <div class="subtag-section">
    <div class="subtag-label">{{ tag | downcase }}</div>
    <ul class="post-list">
      {% for post in tagged %}
      <li>
        <a href="{{ post.url | relative_url }}" class="post-row">
          <span class="post-row-date">{{ post.date | date: "%b %d, %Y" }}</span>
          <div class="post-row-body">
            <div class="post-row-title">{{ post.title }}</div>
            {% if post.subtitle %}<div class="post-row-excerpt">{{ post.subtitle }}</div>{% endif %}
          </div>
        </a>
      </li>
      {% endfor %}
    </ul>
  </div>
    {% endif %}
  {% endfor %}

  {% assign all_notes = site.posts | where_exp: "post", "post.tags contains 'notes'" %}
  {% assign all_personal_n = site.posts | where_exp: "post", "post.tags contains 'personal'" %}
  {% assign all_practice = site.posts | where_exp: "post", "post.tags contains 'practice'" %}
  {% assign all_academic = site.posts | where_exp: "post", "post.tags contains 'academic'" %}
  {% assign all_interests = site.posts | where_exp: "post", "post.tags contains 'interests'" %}
  {% assign total_notes = all_notes.size | plus: all_personal_n.size | plus: all_practice.size | plus: all_academic.size | plus: all_interests.size %}
  {% if total_notes == 0 %}
  <ul class="post-list"><li><span class="post-row-empty">nothing here yet</span></li></ul>
  {% endif %}
</section>

<section class="post-section">
  <div class="section-head">
    <span class="section-label">ongoing reflections</span>
    <div class="section-rule"></div>
  </div>
  {% assign ongoing_tags = "ongoing,personal-ongoing,work-ongoing" | split: "," %}
  {% for tag in ongoing_tags %}
    {% assign tagged = site.posts | where_exp: "post", "post.tags contains tag" %}
    {% if tagged.size > 0 %}
  <div class="subtag-section">
    <div class="subtag-label">{{ tag | downcase | replace: "-ongoing","" }}</div>
    <ul class="post-list">
      {% for post in tagged %}
      <li>
        <a href="{{ post.url | relative_url }}" class="post-row">
          <span class="post-row-date">{{ post.date | date: "%b %d, %Y" }}</span>
          <div class="post-row-body">
            <div class="post-row-title">{{ post.title }}</div>
            {% if post.subtitle %}<div class="post-row-excerpt">{{ post.subtitle }}</div>{% endif %}
          </div>
        </a>
      </li>
      {% endfor %}
    </ul>
  </div>
    {% endif %}
  {% endfor %}
  {% assign ongoing_all = site.posts | where_exp: "post", "post.tags contains 'ongoing'" %}
  {% if ongoing_all.size == 0 %}
  <ul class="post-list"><li><span class="post-row-empty">nothing here yet</span></li></ul>
  {% endif %}
</section>

<section class="post-section">
  <div class="section-head">
    <span class="section-label">past reflections</span>
    <div class="section-rule"></div>
  </div>
  {% assign reflection_tags = "reflections,personal-reflection,work-reflection" | split: "," %}
  {% for tag in reflection_tags %}
    {% assign tagged = site.posts | where_exp: "post", "post.tags contains tag" %}
    {% if tagged.size > 0 %}
  <div class="subtag-section">
    <div class="subtag-label">{{ tag | downcase | replace: "-reflection","" | replace: "reflections","general" }}</div>
    <ul class="post-list">
      {% for post in tagged %}
      <li>
        <a href="{{ post.url | relative_url }}" class="post-row">
          <span class="post-row-date">{{ post.date | date: "%b %d, %Y" }}</span>
          <div class="post-row-body">
            <div class="post-row-title">{{ post.title }}</div>
            {% if post.subtitle %}<div class="post-row-excerpt">{{ post.subtitle }}</div>{% endif %}
          </div>
        </a>
      </li>
      {% endfor %}
    </ul>
  </div>
    {% endif %}
  {% endfor %}
  {% assign ref_all = site.posts | where_exp: "post", "post.tags contains 'reflections'" %}
  {% assign ref_p = site.posts | where_exp: "post", "post.tags contains 'personal-reflection'" %}
  {% assign ref_w = site.posts | where_exp: "post", "post.tags contains 'work-reflection'" %}
  {% assign ref_total = ref_all.size | plus: ref_p.size | plus: ref_w.size %}
  {% if ref_total == 0 %}
  <ul class="post-list"><li><span class="post-row-empty">nothing here yet</span></li></ul>
  {% endif %}
</section>

<section class="post-section">
  <div class="section-head">
    <span class="section-label">finished writings</span>
    <div class="section-rule"></div>
  </div>
  <ul class="post-list">
    {% assign writings = site.posts | where_exp: "post", "post.tags contains 'writings'" %}
    {% for post in writings %}
    <li>
      <a href="{{ post.url | relative_url }}" class="post-row">
        <span class="post-row-date">{{ post.date | date: "%b %d, %Y" }}</span>
        <div class="post-row-body">
          <div class="post-row-title">{{ post.title }}</div>
          {% if post.subtitle %}<div class="post-row-excerpt">{{ post.subtitle }}</div>{% endif %}
        </div>
        {% if post.form %}<span class="post-tag">{{ post.form }}</span>{% endif %}
      </a>
    </li>
    {% endfor %}
    {% if writings.size == 0 %}<li><span class="post-row-empty">nothing here yet</span></li>{% endif %}
  </ul>
</section>
