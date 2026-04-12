---
layout: home
title: home
---

<section class="post-section">
  <div class="section-head">
    <span class="section-label">notes</span>
    <div class="section-rule"></div>
  </div>
  <ul class="post-list">
    {% assign notes = site.posts | where_exp: "post", "post.tags contains 'notes'" %}
    {% for post in notes %}
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
    {% if notes.size == 0 %}<li><span class="post-row-empty">nothing here yet</span></li>{% endif %}
  </ul>
</section>

<section class="post-section">
  <div class="section-head">
    <span class="section-label">ongoing reflections</span>
    <div class="section-rule"></div>
  </div>
  <ul class="post-list">
    {% assign ongoing = site.posts | where_exp: "post", "post.tags contains 'ongoing'" %}
    {% for post in ongoing %}
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
    {% if ongoing.size == 0 %}<li><span class="post-row-empty">nothing here yet</span></li>{% endif %}
  </ul>
</section>

<section class="post-section">
  <div class="section-head">
    <span class="section-label">past reflections</span>
    <div class="section-rule"></div>
  </div>
  <ul class="post-list">
    {% assign reflections = site.posts | where_exp: "post", "post.tags contains 'reflections'" %}
    {% for post in reflections %}
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
    {% if reflections.size == 0 %}<li><span class="post-row-empty">nothing here yet</span></li>{% endif %}
  </ul>
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
