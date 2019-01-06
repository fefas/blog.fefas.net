---
layout: base

title: Contents of Authors Content
permalink: /contents-of-other-authors
---

# {{ page.title }}

Here is a list of content created by other authors which I really enjoyed:

## Not technical

{% for content in site.data.contents-of-other-authors.not-tech %}
  * [{{ content.title }}]({{ content.link }})<span class="other-author">{{ content.author }}</span>
{% endfor %}

## Technical

{% for content in site.data.contents-of-other-authors.tech %}
  * [{{ content.title }}]({{ content.link }})<span class="other-author">{{ content.author }}</span>
{% endfor %}
