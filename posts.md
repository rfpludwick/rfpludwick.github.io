---
title: Posts
---

# Posts

{% for post in site.posts %}
- [{{ post.title }}]({{ post.url }}), _{{ post.date | date: "%B %-d, %Y" }}_
{% endfor %}

### Navigation

- [Homepage](/)
- [Projects](/projects)
