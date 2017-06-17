---
layout: withNavigationBar
permalink: /posts
---

# Posts

{% for post in site.posts %}
  * a {{ post.date | date: '%Y %b %d' }} - [{{ post.title }}]({{ post.url }})
{% endfor %}
