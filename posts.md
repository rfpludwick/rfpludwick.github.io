---
title: Posts
---

# Posts

<!-- I dislike not being able to put proper line breaks in this for loop -->
{% for post in site.posts %}- [{{ post.title }}]({{ post.url }}), _{{ post.date | date: "%B %-d, %Y" }}_
{% endfor %}

### Navigation

- [Homepage](/)
- [Projects](/projects)
