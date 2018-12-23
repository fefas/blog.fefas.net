---
layout: common

title: Other Authors Content
permalink: /other-authors-content
---

# {{ page.title }}

Here is a list of content created by other authors which I really enjoyed:

> I keep it as a self-storage, in the way it's easily find something I've read
> in the past, and because someone can find something interesting.

## Not technical

{% for content in site.data.other-authors-content.not-tech %}
  * [{{ content.title }}]({{ content.link }})<span class="other-author">{{ content.author }}</span>
{% endfor %}

## Technical

{% for content in site.data.other-authors-content.tech %}
  * [{{ content.title }}]({{ content.link }})<span class="other-author">{{ content.author }}</span>
{% endfor %}
