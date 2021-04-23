---
layout: navigation
---

This site constitutes my personal musings, as well as a "portfolio" of some of my projects. Since most of my projects are proprietary by nature, you'll only really get to see the few things I've done publicly. Sorry about that folks. I'm light on open-source contributions.

I'll try to update more regularly than back when I first started this site in 2018.

## Recent Posts

{% for post in site.posts limit:5 %}* [{{ post.title }}]({{ post.url }}), _{{ post.date | date: "%B %-d, %Y" }}_
{% endfor %}
