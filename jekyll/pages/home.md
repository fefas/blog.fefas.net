---
layout: page
permalink: /
---

# {{ site.data.me.name }} <span class="nickname">{{ site.data.me.nickname }}</span>

Hello, World! I am {{ site.data.me.name }}, aka <span class="nickname">
{{ site.data.me.nickname }}</span> which is my nickname on the web.

By developing quality software, my main goal is to contribute to the open source
community and also to the companies that are engaged to create innovative
solutions that improve peoples' lives.

I will leave here content about what I learn daily that may be important to
others developers. I hope that it may be also helpful for you.

You can find me on
  [github]({{ site.data.me.links.github }}),
  [linkedin]({{ site.data.me.links.linkedin }}),
  [twitter]({{ site.data.me.links.twitter }}),
  [medium]({{ site.data.me.links.medium }}) and
  [stack overflow]({{ site.data.me.links.stackoverflow }}).

## Posts

Next post coming: _How to work daily with TDD._

{% for post in site.posts %}
  * [{{ post.title }}]({{ post.url }}) <span class="post-date">{{ post.date | date: '%Y %b %d' }}</span>
{% endfor %}
