---
title: Home Lab & Network Evolution, Part 4
layout: post
date: 2021-11-26
categories:
  - network
  - infrastructure
  - home lab
  - smart home
---

## As Seen Previously On This Blog

Make sure to read the previous posts in this series:

* [Part 1]({% post_url 2021-11-05-home-lab-network-evolution-1 %})
* [Part 2]({% post_url 2021-11-12-home-lab-network-evolution-2 %})
* [Part 3]({% post_url 2021-11-19-home-lab-network-evolution-3 %})

## Hello, Home Assistant

In early 2018 I intentionally acquired another Raspberry Pi, despite the fact
that I had a Raspberry Pi 2B laying around which I wasn't using. I got a
Raspberry Pi 3B because I wanted something with more horsepower than the 2B to
run [Home Assistant](https://www.home-assistant.io/). I had a few reasons to
give Home Assistant (HA) a try:

* Coordination of Scout Alarm and Arlo Pro alarm modes, which had no direct
integration
* Better user interface for customizing Philips Hue bulb settings
* Alerts for the front door in case it didn't lock properly
* Ability to coordinate our Harmony Hub actions with the Philips Hue bulbs

So thus began my descent into a higher maintenance home technology setup. Even
the UniFi system didn't have as large an impact on my home technology
maintenance than Home Assistant. I spun up a GitHub repository for my
[Home Assistant configurations](https://github.com/rfpludwick/home-assistant-config),
especially because back in 2018 HA relied very heavily on YAML configurations.
There wasn't much back then in terms of setup and integrations solely from the
user interface. Nowadays, though, there's a lot more UI functionality.

Home Assistant is a really great piece of software these days. Its strength lies
in automation, which is something we haven't done much of so far, especially
since we have a preschooler and life gets more unpredictable with having a child
around. Additionally, the pandemic which began in early 2020 has also proven to
us that we cannot create a truly reliable lifestyle. All of that aside, Home
Assistant really helps us have a common user interface for most of our smart
home technology. I will say, the alerts functionality has been crucial for us. I
was able to setup alerts for if the front door or garage door have been unlocked
for a lengthy period of time, which has helped if we forgot to lock after
unloading groceries.

Around the time we adopted Home Assistant, our DDNS provider started to restrict
their offerings and we would start to have to pay to utilize their service. I
knew I could whip up a DDNS client pretty quickly on my own, so I did,
[creating one on GitHub using PHP]
({% link _projects/aws-route-53-ddns-client.md %}).
I later built a Go version and included it in the same repository. I ran this
client on the 1U server, which offloaded a tiny bit of processing from the UniFi
Cloud Key.

I had to add in one final piece of software to really make sure our Home
Assistant usage was as secure as I could -
[Let's Encrypt](https://letsencrypt.org/) SSL certificates. I started running
the Certbot software on the Dell 1U server on an automated basis to ensure I
could use SSL to connect to anything running in my home.

## Synology Upgrade & Reconfigurations

The end of 2018 brought my family a very, very substantial Synology NAS upgrade.
Our existing DS212j was proving to be underpowered over time for the kinds of
things we wanted to do with it. We couldn't turn on thumbnail generation for our
photos storage, and the anti-virus software would never complete a run before
overlapping with its next execution. We upgraded to a
[Synology NAS DS918+](https://global.download.synology.com/download/Document/Hardware/DataSheet/DiskStation/18-year/DS918+/enu/Synology_DS918_Plus_Data_Sheet_enu.pdf).
We stuffed 4 Seagate IronWolf NAS 8GB drives into the NAS in a RAID 5
configuration, and also added in 2 WD Black 250GB NVMe M.2 drives to act as
cache. Finally, we also doubled the memory storage from 4GB to 8GB by adding in
additional compatible RAM from Synology. With this configuration, we have 21.7TB
in RAID5 storage space, as well as a cache size of 32GB in a RAID1
configuration. The 8GB RAM has also held up pretty well. So far, the bottleneck
in NAS performance generally lies in the CPU, it seems (and even now, it's not
really hindering anything).

Around this time I got [Plex](https://www.plex.tv/) installed and setup on my
home lab. It's running as a package on the new NAS.

With the substantial upgrade in processing power on our NAS, I took the
opportunity to really evaluate all of the hardware and software we were running.
Thus began the great reconfiguration to shift a lot of processing and utility to
the NAS. The Raspberry Pi 3B wasn't doing terribly well in hosting our Home
Assistant installation, as we had a high number of sensors and other
integrations running. So I migrated the Home Assistant installation to a
[Docker](https://www.docker.com/) container on the new NAS, which saw an
immediate performance upgrade on HA.

With the Raspberry Pi 3B freed up, I decided we should also decommission the 1U
Dell server. I'd already offloaded the SSH gateway function from that device
previously; it was still running a reverse proxy. That was something the 3B
could handle, so I migrated the reverse proxy service over to the 3B. I also
moved the AWS DDNS and Let's Encrypt clients over to the new NAS via Docker
containers. Thus, the 1U Dell server left the service of my home lab.

I added a couple more things to our home lab setup during the time of the
transition to the Synology NAS. It was Christmastime around when we were making
these upgrades, and I wanted an easier way to turn on and off Christmas lights.
I invested in some
[Kasa Smart Wi-Fi Plug Minis](https://www.kasasmart.com/us/products/smart-plugs/kasa-smart-plug-mini-ep10)
to solve this problem. Their integration with Home Assistant is one of the
reasons I chose them.

The second thing I added to our home lab in the closing months of 2018 was
introducing the [Pi-hole software](https://pi-hole.net/) on the Raspberry Pi 2B
that I never used in our home lab. I can't recommend the Pi-hole enough,
actually. It's reduced the number of ads we get when browsing the Internet, and
has offered me a little bit more sanity in my quest for more Internet privacy.
The downside though is that the ads which are a part of most online searches
won't actually resolve, and even referral links on sites like
[Wirecutter](https://www.nytimes.com/wirecutter/) may not work.

## Interlude Before Home Coding

In early 2019, I acquired a
[Doxie Q scanner](https://www.getdoxie.com/product/doxie-q) in early 2019 as an
improvement to my home scanning setup (which was a previous Doxie model as well,
but not WiFi-enabled). And soon after I ended up replacing our Netgear cable
modem with a [Motorola MB8600 modem](https://www.motorola.com/us/mb8600/p),
because the Netgear modem was failing. That was annoying. We barely got our
money's worth on avoiding modem rental fees for the life of the Netgear modem.
Thankfully, the Motorola modem is still in service today and has definitely more
than paid for itself in saved rental fees from our ISP.

We also decided that we were tired of our downstairs entertainment center
relying on WiFi rather than something wired. Since we weren't in a position to
run ethernet cable throughout the home (though this is something I'm planning
on in the future), I decided it was finally time to acquire a new powerline
network for the home. We settled on a
[NETGEAR PL1200 powerline adapter](https://www.netgear.com/home/wired/powerline/pl1200/).
We plugged one adapter next to the network core and the other behind the
entertainment center. At first we plugged the adapter straight into our Apple
TV, but we also wanted to wire up the rest of the entertainment center. So we
then added in a
[UniFi US-8-60W](https://store.ui.com/collections/unifi-network-switching/products/unifi-switch-8-60w).
This wrapped up 2019.

In 2020, we also invested separately in improving our WiFi network coverage by
adding a [UniFi UAP-NANOHD](https://store.ui.com/products/unifi-nanohd-us)
access point to our office, connecting it to our new powerline network by adding
a third adapter. I was finding the WiFi coverage in the office to be subpar. I
wasn't ever able to 100% nail down the cause, but I believe it to be a
combination of our home's construction and ever-increasing WiFi bands usage in
our neighborhood. So I decided to increase the arms race, just in case. We also
added a [Bond Bridge](https://www.bondhome.io/product/bond-bridge/) to enable
infrared-controlled devices to get smart home controls, and to integrate those
controls into Home Assistant. Our gas stove (not a range; a freestanding stove
in lieu of a fireplace) has an IR remote and we were able to connect the Bond
Bridge to it, and then use the app and Home Assistant to turn the stove on and
off. I'm pending adding our ceiling fans to the Bond Bridge, and have yet to do
it mostly because it'll require partial disassembly of each fan in order to
connect an IR receiver.

We did add another piece of software to the home lab, hosted on the NAS -
[Bitwarden](https://bitwarden.com/). It's a password manager, much like
[1Password](https://1password.com/) and [LastPass](https://www.lastpass.com/)
(which we were previously using). Side note - please use a password manager,
rather than reuse passwords. Please. Anywho, we switched off of LastPass for
two reasons:

1. LastPass started mucking around with their free offering and made it less
appealing.
2. I wanted to bring my password management private.

Bitwarden has been really excellent for us. I prefer its interface to LastPass,
I'm hosting it from the confines of my own home on the NAS, and we can more
easily share passwords as a family. It's been great. Bitwarden wasn't the last
thing I added to our home home lab in 2020 - there was one more thing, which
I'll get to in my next, and final, post in this series.
