---
title: UniFi Phantom Clients Cleanup
layout: project
---

For some reason or other, I keep getting phantom clients in my UniFi Controller
for my home network. I believe it has to do with some way in which I'm using
Docker containers to run some services (including the Controller itself). I
originally wrote this project in PHP and later added a Go version as I was
learning Go at the time.

Essentially, this application finds any clients registered with the UniFi
Controller which have no inbound/outbound traffic, nor any customized name, and
removes it from the Controller. This helped me reduce the number of clients I
saw at the time, 500+, down to to something like 80.

Please note that this does not appear to work with versions of the UniFi
Controller 6.2 or older, possibly even 6.1 or older. They removed a key API call
for some inexplicable reason - the call to forget a client from the network.

- Repository is at
[https://github.com/rfpludwick/unifi-phantom-clients-cleanup](https://github.com/rfpludwick/unifi-phantom-clients-cleanup)
