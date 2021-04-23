---
title: Projects
layout: navigation
---

<!-- I dislike not being able to put proper line breaks in this for loop -->
{% for project in site.projects %}* [{{ project.title }}]({{ project.url }})
{% endfor %}
