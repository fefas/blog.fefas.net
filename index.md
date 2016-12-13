---
layout: default
---

# {{ site.data.me.name }} <span class="nickname">{{ site.data.me.nickname }}</span>

You can find me at
  [github](https://github.com/fefas),
  [stack overflow](http://stackoverflow.com/users/4259675/fefas),
  [linkedin](https://br.linkedin.com/in/fefas) and
  [facebook](https://www.facebook.com/eufefas).

## Posts

{% for post in site.posts %}
  * {{ post.date | date: '%Y %b %d' }} - [{{ post.title }}]({{ post.url }})
{% endfor %}

Comming soon: I am working on two drafts ..

## Contributions

{% for contribution in site.data.contributions %}
  * {{ contribution.projectName }} - see [the project page]({{ contribution.projectPage }}) and [my commits]({{ contribution.myCommitsUrl }})
{% endfor %}
