---
title: AWS Route 53 DDNS Client
layout: project
---

I switched my DNS hosting for my home domain to AWS Route 53, and I needed a solid DDNS client. There wasn't really one available on the market at the time, so I ended up finding one written in PHP at [Flynsarmy](https://www.flynsarmy.com/2015/12/setting-up-dynamic-dns-to-your-home-with-route-53/) and modified it for my own needs, as well as (tried) to make it a little more object-oriented. Not that it needed it. I'm using Let's Encrypt ACME v2 for a wildcard SSL certificate as well.

Later on I ended up adding a Go version of the client as I was trying to learn a bit more about the language and have some viable, useful experience with it on a personal project.

- Repository is at
[https://github.com/rfpludwick/aws-route53-ddns-client](https://github.com/rfpludwick/aws-route53-ddns-client)
