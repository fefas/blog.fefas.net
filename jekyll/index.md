---
layout: common
permalink: /
---

# {{ site.data.me.name }} <span class="nickname">{{ site.data.me.nickname }}</span>

Hello, World! My name is {{ site.data.me.name }}, aka <span class="nickname"> {{
site.data.me.nickname }}</span>, and I'm a Clean Coder and TDD evangelist who
delivers software ASAP (As Simple As Possible).

My personal goal is to improve peoples' lives through my tech skills while
contributing to open source projects and working at companies engaged in
creating innovative solutions.

This blog aims to be a space where I can publish contents that are imporant to
me and may be also useful for others developers.

You can find me on
  [github]({{ site.data.me.links.github }}),
  [twitter]({{ site.data.me.links.twitter }}),
  [stack overflow]({{ site.data.me.links.stackoverflow }}),
  [linkedin]({{ site.data.me.links.linkedin }}),
  [medium]({{ site.data.me.links.medium }}) and
  [dev.to]({{ site.data.me.links.devto }}).

## Posts

{% for post in site.posts %}
  * [{{ post.title }}]({{ post.url }}) <span class="post-date">{{ post.date | date: '%Y %b %d' }}</span>
{% endfor %}
