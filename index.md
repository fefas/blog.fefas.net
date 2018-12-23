---
layout: common

title: Felipe Martins fefas
permalink: /
---

# {{ site.author.name }} <span class="nickname">{{ site.author.nickname }}</span>

Hello, World! My name is {{ site.author.name }}, aka <span class="nickname"> {{
site.author.nickname }}</span>. I'm a Clean Coder and TDD evangelist who
delivers software ASAP (As Simple As Possible).

This blog is a space where I can share my ideas and some other content. Maybe
they are useful for other developers as well.

You can find me on
  [github]({{ site.author.links.github }}),
  [twitter]({{ site.author.links.twitter }}),
  [stack overflow]({{ site.author.links.stackOverflow }}),
  [linkedin]({{ site.author.links.linkedin }}),
  [medium]({{ site.author.links.medium }}) and
  [dev.to]({{ site.author.links.devto }}).

## Posts

{% for post in site.posts %}
  * [{{ post.title }}]({{ post.url }}) <span class="post-date">{{ post.date | date: '%Y %b %d' }}</span>
{% endfor %}

## More...

- [Content created by other authros with I really enjoyed](/other-authors-content);
