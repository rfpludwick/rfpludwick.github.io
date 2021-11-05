---
title: Home Lab & Network Evolution, Part 1
layout: post
date: 2021-11-04
categories:
  - network
  - infrastructure
  - home lab
  - smart home
---

## Prologue

My home network and infrastructure (and by extension, my home lab) has had quite
an evolution from whenever my first WiFi network was installed. I don't quite
remember the details all the way back that far, but when I first left my
father's home would be when I setup my first WiFi home network. It was a
1-bedroom apartment, and I was entering my final semester of undergraduate
college study.

I've been doing substantial work lately on my home network and infrastructure,
what I will henceforth refer to as my home lab for convenience. What began so
long ago as simply renting a modem from my local ISP and connecting it to a WiFi
router of some kind has progressed into a "pro-sumer" setup complete with
implementations of tools seen in professional DevOps teams. That all makes a bit
of sense for me, as I'm a technologist and also work currently as a DevOps
software engineering manager.

I thought it might be time to, well, take the time and document my journey from
that first WiFi network all the way to where I am now, and to also explore some
of the things I'm doing lately with my home lab. Some of this follows my career
progression in terms of technologies used; some follows my increasing desire to
control some of my own privacy; some others are simply because it was cool and
neat to try something new in technology for home use.

So buckle in and hang on tight. As we get closer to modern day, I'll have more
details and information on my setup at hand, because I'll have either documented
it or it will be fresher in my memory.

## First Setup

Honestly, I have no idea what my first network **really** looked like, aside
from the router. I'd have had the following:

* Windows gaming rig
* Windows laptop
* iPhone
* DSL modem
* D-Link DI-624 WiFi router
* Video game consoles

It's entirely possible I had a small switch running at the time as well, because
I know my rig didn't have a WiFi adapter in it; if I had a switch it was
probably also D-Link. Other than that, the only other devices on the network
would have been the smartphones of my roommates. This was generally my network
approach and setup for years, in fact. With minor variances to account for
changing roommates and homes over the next few years, the connected devices on
the network didn't deviate much at all. My roommates all had the same categories
of devices I did, and I typically ran the network with my hardware.

## Just Getting Started

In 2008 I moved into a single-family home, and here's where I start to expand my
technological tendrils as far as a home lab goes. It was a two-story home and my
gaming area was in the second-floor loft. The main entertainment center, which
is where the video game consoles lived, was in the living room on the first
floor. Thus, my first networking dilemma presented itself.

I knew I didn't want to run ethernet cable just out and around the whole home to
bridge this networking gap. The home was also not pre-networked (seriously, home
builders, start to do this as standard please). So my options came down to a
WiFi bridge or to powerline adapters. I opted to go with a WiFi bridge from
D-Link. The primary device was connected in the loft, where what constituted the
core of the home lab lived. The receiver was downstairs.

The WiFi bridge didn't really work out for my needs, unfortunately. The
throughput worked well enough most of the time, but I had problems finding good
placement of the receiver. It didn't seem to matter where I positioned the two
devices and I was never able to get the receiver to have a strong enough
connection. Unreliability with the bridge didn't work well for online gaming. I
ultimately ditched the WiFi bridge in favor of powerline adapters. The secure
network they were able to create alleviated any fears I had of exploitation of
the devices by someone else connecting similar devices to power in the
neighborhood. Unfortunately, I don't know what adapters I ultimately used at the
time.

I also acquired a D-Link WiFi USB print server during this time. I got sick of
having to make sure that my gaming rig was online and had the printer connected
and shared on the network. It worked well enough, though I had occasional
problems getting it to stick to a static IP.

One last thing to note is that I had a Western Digital external storage device
as well. I've scoured my online orders to try to find more information on this
device, but I cannot find anything. I must have bought it at Fry's Electronics
(rip!) back in the day. I shared this storage on the network as well during the
time I was sharing the directly-connected printer. Once I installed the USB
print server, I took the external storage off of the network (i.e. I shut down
my computer when not in use) because I was the only one in the home using the
device.

Finally, in 2009, I also acquired an Amazon Kindle. Until 2011, this was now my
most complex home lab ever:

* Computers
* Smartphones
* Modem
* WiFi router
* Powerline adapters (formerly a WiFi bridge)
* Networking switch
* Video game consoles
* WiFi print server
* Kindle

Then... 2011 happened. We'll get to that in my next post.
