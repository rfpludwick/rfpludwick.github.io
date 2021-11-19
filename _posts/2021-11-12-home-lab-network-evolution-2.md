---
title: Home Lab & Network Evolution, Part 2
layout: post
date: 2021-11-12
categories:
  - network
  - infrastructure
  - home lab
  - smart home
---

## As Seen Previously On This Blog

Make sure to read
[Part 1]({% post_url 2021-11-05-home-lab-network-evolution-1 %})!

## Downsizing & Reboot

In early 2011 my life changed drastically. I moved from one metropolitan area to
another and left behind a substantial amount of belongings and technology...
including my cat (never fear, she's back with me today, and is still the
**sweetest** cat you'd ever meet - that's not hyperbole). I rented a single
bedroom from a homeowner. The only networked devices I took with me were the
following:

* Gaming rig
* Smartphone
* Video game consoles (I only connected one of them at the time; the rest stayed
stored in the closet)

Note the lack of a laptop. I didn't own a laptop from 2011 through 2016. I just
used my gaming rig for any general computing needs I had.

I didn't have to setup a network at all because the homeowner had one. So I was
back to the kind of lifestyle from when I lived with my father during college -
someone else's network. It was standard-fare stuff, really. I never really knew
what they were running, aside from my having gotten the WiFi password when I
moved in. I did, however, get a WiFi adapter for the gaming rig. They didn't
have any wired networking in the home and I had to adjust and make-do.

In the late summer of 2011 I returned to being a "head of household" as it were;
I moved out of the single bedroom and rented an apartment again. Thus, I
needed to again have an ISP provide an Internet connection and I had to again
setup a network. My new home lab was fast approaching.

## The Real Buildup Begins

I acquired a new D-Link WiFi router and rented a modem from my ISP, per the
norm. I reacquired another small D-Link switch, because I also replaced my
entertainment center's A/V receiver with a new one which had Ethernet
connectivity, a Yamaha RX-V671. This really marks the beginning of time where I
start to accumulate more and more Internet-connected devices.

I ran this setup for about a year and a half:

* Windows gaming rig
* iPhone
* Modem
* D-Link WiFi router
* Networking switch
* Video game consoles
* A/V receiver

## "Raspberry Pi 1 B" Arcade Cabinet

In early 2013, I decided to take the plunge and try my hand at a Raspberry
Pi-powered project. I'm not really a "maker," but I've been playing video games
my entire life. So I settled on building a MAME arcade cabinet. I outfitted it
with some [X-Arcade](https://shop.xgaming.com/) equipment and bought a
[Raspberry Pi 1B](https://en.wikipedia.org/wiki/Raspberry_Pi) to run the whole
setup. I ran a long ethernet cable through my apartment to connect it to the
network.

Unfortunately, the Raspberry Pi (please note this was the original model Pi) was
just a bit too underpowered to run my MAME cabinet properly. So I ended up
putting together a cheap gaming PC from Fry's Electronics (RIP Fry's) and
replaced the Raspberry Pi. Once I got that installed, everything worked just
fine. I installed multiple emulators on the machine and got some ROMs running on
it. I was so happy to get to play
[arcade TMNT](https://en.wikipedia.org/wiki/Teenage_Mutant_Ninja_Turtles_(arcade_game))
again.

I didn't want to have to continue running a long ethernet cable through my
apartment, so I once again dove into the realm of WiFi bridges. Since I was
renting an apartment, I wasn't about to even approach the idea of powerline
adapters. I got a
[D-Link DAP-1522 WiFi bridge](https://legacy.us.dlink.com/pages/product.aspx?id=d1d3d17dda4c47eca25e39a4cfc39827)
to connect to the arcade cabinet, and all was set. I even had some friends over
to play some games on it.

So what happened to the Raspberry Pi? I kept it, but didn't really use it for
much of anything for a a solid 4 years.

## Proper Network Attached Storage

Soon after I setup my arcade cabinet, my WD external storage started to fail on
me. Thankfully I didn't lose any data, but I knew I had to replace the hardware.
I decided to make my first foray into network attached storage, rather than get
another external storage device directly connected to my gaming rig. I didn't
have a laptop at the time, but I figured I'd eventually get one again.
Additionally, video game consoles were getting the ability to display photos and
play videos stored on network devices.

I purchased a
[Synology NAS DS212j](https://www.synology.com/en-global/products/DS220j) (the
link is its successor; I couldn't find a good link on the model I actually had),
and loaded it up with 4TB of drive space configured in RAID1. At the time, it
was a dream come true. Real network storage without having to have my PC powered
on. On top of that, a RAID1 configuration to protect against HDD failure. I
didn't run much on it, though I did **try** to run
[Photo Station](https://www.synology.com/en-us/dsm/feature/photo_station). I
couldn't have it generate thumbnails because it was too underpowered for how
many photos I threw on the thing. This information will become important by the
end of 2018...

## The Rise of Streaming Video

In the second half of 2013 (not coincidentally when my wife and I started
dating), I substantially upgraded my apartment's streaming video options, and
started to take more control of the connected hardware within my apartment. I
acquired both a 1st Generation
[Chromecast](https://en.wikipedia.org/wiki/Chromecast) and a
[3rd Generation Apple TV](https://support.apple.com/kb/SP648). My TV at the time
didn't have any built-in Chromecast functionality, and I wanted to try out
streaming video to my TV from my phone. The price point of the Chromecast was
pretty appealing at the time as well. The Apple TV was acquired almost entirely
because I owned some content licenses on the iTunes Store and couldn't watch
those titles on my TV without an Apple device.

Truth be told, I rarely used the Chromecast. It wasn't as reliable as I wanted
it to be. The Apple TV wasn't used heavily outside of iTunes content because...
a month after the Apple TV acquisition, I decided I wanted to pay my local cable
company less money for their hardware rentals. I bought both a
[TiVo Roamio](https://www.cnet.com/reviews/tivo-roamio-review/) (and switched to
using a [CableCard](https://en.wikipedia.org/wiki/CableCARD) as a result) as
well as a
[Motorola Surfboard SB6141](https://www.cnet.com/products/motorola-surfboard-sb6141/)
modem.

The Roamio was great in that it had built-in support for Netflix. Sure, the
Apple TV did too, but since the broadcast cable was connected into the Roamio,
we generally got to use just one device for all of our entertainment needs
(minus that iTunes content). And buying the modem also meant I was avoiding even
more rental fees and got to control my device just a little bit more (not as
much as I'd like, but it was better than having no control at all).

As of the time of this post, I actually still have the Roamio. It's held on for
a long time now. The last purchase in my burst to add in streaming video and to
own more of the connected hardware in my home was a second D-Link DAP-1522 WiFi
bridge. The entertainment center was closer to my network core than the arcade
cabinet was, but I still didn't want to have ethernet cables snaking all over my
apartment.

I'll dive into how I started getting into smart home equipment in my next post.
