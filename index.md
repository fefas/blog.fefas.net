---
layout: default
---

# {{ site.data.me.name }} <span class="nickname">{{ site.data.me.nickname }}</span>

Hello, World! My name is {{ site.data.me.name }}, but I am also known as <span
class="nickname">{{ site.data.me.nickname }}</span>, which is my nickname on the
web.

By developing quality software, my main goal is to contribute to the open source
community and also to the companies that are engaged to create innovative
solutions that improve peoples' lives.

I will leave here content about what I learn daily that may be important to
others developers. I hope that it may be also helpful for you.

You can find me on
  [github]({{ site.data.me.githubUrl }}),
  [stack overflow]({{ site.data.me.stackoverflowUrl }}) and
  [linkedin]({{ site.data.me.linkedinUrl }}).

## Posts

{% for post in site.posts %}
  * {{ post.date | date: '%Y %b %d' }} - [{{ post.title }}]({{ post.url }})
{% endfor %}

): none until now, working on two drafts..

## Recommended Articles

{% for article in site.data.recommendedArticles %}
  * [{{ article.title }}]({{ article.url }}) <span class="author">- {{ article.author }}</span>
{% endfor %}

## Contributions

{% for contribution in site.data.contributions %}
  * [{{ contribution.projectName }}]({{ contribution.myCommitsUrl }})
{% endfor %}
