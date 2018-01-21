---
layout: common
permalink: /

title: Felipe Martins fefas
---

# {{ site.author.name }} <span class="nickname">{{ site.author.nickname }}</span>

Hello, World! My name is {{ site.author.name }}, aka <span class="nickname"> {{
site.author.nickname }}</span>, and I'm a Clean Coder and TDD evangelist who
delivers software ASAP (As Simple As Possible).

My personal goal is to improve peoples' lives through my tech skills while
contributing to open source projects and working at companies engaged in
creating innovative solutions.

This blog aims to be a space where I can publish contents that are imporant to
me and may be also useful for others developers.

You can find me on
  [github]({{ site.author.links.github }}),
  [twitter]({{ site.author.links.twitter }}),
  [stack overflow]({{ site.author.links.stackoverflow }}),
  [linkedin]({{ site.author.links.linkedin }}),
  [medium]({{ site.author.links.medium }}) and
  [dev.to]({{ site.author.links.devto }}).

## Posts

{% for post in site.posts %}
  * [{{ post.title }}]({{ post.url }}) <span class="post-date">{{ post.date | date: '%Y %b %d' }}</span>
{% endfor %}
