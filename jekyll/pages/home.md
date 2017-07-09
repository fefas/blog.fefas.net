---
layout: page
permalink: /
---

# {{ site.data.me.name }} <span class="nickname">{{ site.data.me.nickname }}</span>

Hello, World! My name is {{ site.data.me.name }}, aka <span class="nickname"> {{
site.data.me.nickname }}</span>. I'm Physicist, Software Developer, Clean Coder
and TDD evangelist in love with DevOps culture that delivers software ASAP (As
Simple As Possible).

My personal goal is to improve peoples' lives through my software development
skills while contributing to open source projects and working at companies
engaged in creating innovative solutions.

I will leave here content about what I learn daily that may be important to
others developers. I hope that it may be also helpful for you.

You can find me on
  [github]({{ site.data.me.links.github }}),
  [twitter]({{ site.data.me.links.twitter }}),
  [stack overflow]({{ site.data.me.links.stackoverflow }}),
  [linkedin]({{ site.data.me.links.linkedin }}),
  [medium]({{ site.data.me.links.medium }}) and
  [dev.to]({{ site.data.me.links.devto }}).

## Posts

Next post coming: _How to work daily with TDD._

{% for post in site.posts %}
  * [{{ post.title }}]({{ post.url }}) <span class="post-date">{{ post.date | date: '%Y %b %d' }}</span>
{% endfor %}
