---
layout: default
---

# {{ site.data.me.name }} <span class="nickname">{{ site.data.me.nickname }}</span>

Hello, World! My name is {{ site.data.me.name }}, but I am also known as <span
class="nickname">{{ site.data.me.nickname }}</span>, which is my nickname on the
web.

Through software with quality, my main goal is to contribute to the open source
community and also to the companies which are engaged in creating innovative
solutions that improve people's lives.

I will write and leave on this page some [posts](#posts) about what I learn
daily that should be important to others developers. I hope the content can be
helpful for you too.

You can find me on
  [github](https://github.com/fefas),
  [stack overflow](http://stackoverflow.com/users/4259675/fefas) and
  [linkedin](https://br.linkedin.com/in/fefas).

## Posts

{% for post in site.posts %}
  * {{ post.date | date: '%Y %b %d' }} - [{{ post.title }}]({{ post.url }})
{% endfor %}

Comming soon: I am working on two drafts..

## Contributions

{% for contribution in site.data.contributions %}
  * {{ contribution.projectName }}<br>- [project page]({{ contribution.projectPage }})<br>- [my commits]({{ contribution.myCommitsUrl }})
{% endfor %}
