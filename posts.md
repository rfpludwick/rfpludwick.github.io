---
title: Posts
layout: navigation
---

{% for post in site.posts -%}

* [{{ post.title }}]({{ post.url }}),
_{{ post.date | date: "%B %-d, %Y" }}_
{% endfor %}

## By Category

<!-- I dislike not being able to put proper line breaks in this for loop -->
{% for category in site.categories %}
{% capture category_name %}{{ category | first }}{% endcapture %}

### {{ category_name }}

{% for post in site.categories[category_name] -%}

* [{{ post.title }}]({{ post.url }}),
_{{ post.date | date: "%B %-d, %Y" }}_
{% endfor %}

{% endfor %}
