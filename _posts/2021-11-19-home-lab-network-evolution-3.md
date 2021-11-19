---
title: Home Lab & Network Evolution, Part 3
layout: post
date: 2021-11-19
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

## Smart Home Beginnings

My initial investment into smart home technology began in the middle of 2014
when my fiancee and I moved in together (henceforth, there'll be a lot more "we"
and "us" in this journey than "I" and "me"). I bought a
[2nd Generation Nest Thermostat](https://en.wikipedia.org/wiki/Nest_Thermostat).
I had just moved into a new apartment and management didn't have a problem with
my replacing the thermostat, so long as I swapped back to the original unit upon
move-out (which turned out to be just a little over 2 years later). The
automatic away functionality of the thermostat was nice, and it's "learning"
features worked relatively well for my use case.

To continue on the smart home theme, I also acquired a
[1st Generation Amazon Echo](https://m.media-amazon.com/images/G/01/kindle/merch/2018/Alexa/User_Guide/Update/Amazon_Echo_Quick_Start_Guide._CB484340956_.pdf).
My uses of the Echo at this point were pretty limited - mostly to asking about
weather, listening to NPR's news update, and such. And of course, asking the
Echo what the temperature of the Nest was. As time progressed and we added more
and more smart home devices with Alexa integration, we got a lot more value out
of the Echoes.

My smart home beginnings from mid-2014 to the fall of 2016 were really limited
to just these 2 devices. Other than that, the only major acquisitions while we
lived in this apartment were a
[Brother HL-3170CDW](https://www.brother-usa.com/products/hl3170cdw) printer and
[TP-Link TGR1900 Onhub WiFi router](https://www.tp-link.com/us/home-networking/wifi-router/tgr1900/).

The printer became a necessity due to my wife's (yes, by now we got married)
occasional job requirements, and we still have it. The router was supposed to be
a solid upgrade from our old WiFi router. For the small-ish apartment we had at
the time, the device worked well for us. But as we soon discovered when we moved
into a two-story home, and continued to expand our WiFi-connected devices... it
became insufficient, quickly.

## Initializing Oregon

The latter half of the fall of 2016 is when my wife and I moved to Oregon. I was
the advance guard in the move, and we decided to setup a second entertainment
center before all of our stuff got moved here. I ended up buying a
[Yamaha RX-V481 A/V receiver](https://usa.yamaha.com/products/audio_visual/av_receivers_amps/rx-v481_u/index.html)
and a
[Sony Bravia XBR-55X850D](https://www.sony.com/electronics/support/televisions-projectors-lcd-tvs-android-/xbr-55x850d/specifications)
television. These helped me get by as my gaming rig and the other fun stuff
hadn't gotten hauled on to our new home yet. Thankfully though, my wife and I
invested in dual
[Apple A1398 15" MacBook Pros](https://support.apple.com/kb/SP719?locale=en_US)
in advance of the move, so I still had some computing capabilities in our almost
entirely empty home. For the first time in years, I had a laptop! The smart TV
functionality in the Bravia was welcome until our TiVo Roamio arrived to the new
home, and the Yamaha receiver had network connectivity for me to play music on
the speakers I also purchased with it.

We needed a network going in the new home as we spun down the old apartment, so
I ended up just temporarily renting a cable modem with built-in WiFi from our
new ISP. When we completed the move to Oregon, we sold off the old Motorola
Surfboard modem we were using previously, as it was incompatible with the new
ISP.

Some of the initial technological investments in our home came in replacing
older, unconnected technology with more of the emerging smart home products. We
replaced all of our smoke detectors with
[2nd Generation Nest Protects](https://store.google.com/product/nest_protect_2nd_gen_specs?hl=en-US),
and replaced the garage door opener with a MyQ-enabled Chamberlain opener, the
[LW9000WFi](https://www.chamberlain.com/lw9000wf/p/LW9000WF). The Nest Protects
have occasionally detected when we had a bit of smoke coming from some cooking
in the kitchen, so I know their Internet connectivity works well. And it's nice
to be able to open or close the garage door remotely if necessary, especially if
we leave it open and then get a [Home Assistant](https://www.home-assistant.io/)
alert that we left it open (I'll talk at length about Home Assistant later).

We also invested in a connected home alarm system, opting to go with one of the
first home DIY alarm solutions on the market at the time,
[Scout Alarm](https://www.scoutalarm.com/). The same convenience and peace of
mind I got with the MyQ garage door opener applies to our alarm system. We're
still using it, but our base station is old enough at this point that it's
difficult for them to find any more compatible sensors if we need more, and
their newer water detection sensors don't work at all for us. We'll likely move
to a different alarm solution at some point in the near future. Scout's
integrations with other smart home systems is also pretty limited - they rely
mostly on [IFTTT](https://ifttt.com/).

This all initialized our home upon moving to Oregon, but we acquired a few other
things prior to really investing in the next generation of our home lab. I was
gifted a Raspberry Pi 2 Model B for Christmas 2016, which I just left aside with
no real purpose. I wasn't sure what to do with it for quite some time. We also
bought two
[Logitech Harmony Ultimate Hubs](https://support.myharmony.com/en-us/ultimate)
to control our two entertainment centers. These replaced an older Harmony remote
model we had acquired some years back (which wasn't Internet-connected; I think
it was the
[Logitech Harmony 670](https://support.logi.com/hc/en-ca/articles/360024324513--Getting-Started-Harmony-670-Advanced-Universal-Remote)),
and these hubs are still fantastic for us. Having our media systems integrated
into a single remote with a mobile phone app as well is such a wonderful
convenience. Logitech has recently stopped manufacturing the physical devices,
but are still supporting the software which runs them. So I know eventually
we'll have to chart a path forward without them.

The last acquisition we made before the home lab revamp was an
[iRobot Roomba 980](https://store.irobot.com/default/roomba-vacuuming-robot-vacuum-irobot-roomba-980/R980020.html).
We really thought this vacuum cleaner was going to be super helpful for us, but
it has proven not to be. Not by any real fault of iRobot, to be fair. Our home
has two stories, and it cannot navigate stairs. Additionally, we have to gate
off certain sections of the house for pet control, and it cannot navigate those
either. Finally, due to the large amount of technology we have, there are
occasional wires and such around. It just didn't prove to be a good solution for
us due to the way we live our lives. We still have it, and mostly just turn it
on for a select couple of rooms every now and then while we head out of the
house for groceries and such.

By now, though... The capability of the home lab was showing strains, so I
decided to do something about it in early 2017.

## Prosumer, Here We Come

When we moved to Oregon, some of my new coworkers told me about their home labs
and what they were running. One coworker had a really, really beefy setup -
multiple rackmount servers running a whole host of things, including a very
expansive media library (for home use only; don't go thinking they share that
stuff out illegally). They were running Ubiquiti's UniFi network hardware and
software. After research and talking with them and others using UniFi networks,
I decided to jump on in.

I ordered a
[StarTech 8U open frame mount](https://www.amazon.com/gp/product/B01NBPL8OP/)
since the UniFi switch I was to order was rack-mountable; and I ordered a couple
of [Raxxess trays](https://www.amazon.com/gp/product/B0007OGTGS/). I also
ordered a couple of
[StarTech 1U Rack Mount PDUs](https://www.amazon.com/gp/product/B0035PS5AE/).
Finally, the UniFi equipment I ordered was:

* [1st Generation UniFi Cloud Key](https://www.amazon.com/Ubiquiti-UniFi-Cloud-Key-UC-CK/dp/B017T2QB22)
* [UniFi US-16-150W Switch](https://store.ui.com/products/unifi-switch-16-150w)
* [UniFi USG Gateway](https://store.ui.com/products/unifi-security-gateway)
* [UniFi UAP-AC-PRO AP](https://store.ui.com/products/unifi-ac-pro)

When I got all of this setup and installed, I was quite happy. I finally had a
modern, usable interface to manage my home network. Getting to easily see all of
the interconnected devices on the network was really handy, and I started to use
VLANs to separate out my emerging category of IoT devices so that if they got
compromised, I would hopefully be able to protect the rest of our personal
devices from also getting compromised. For my network size back in early 2017,
this set of hardware worked perfectly for me, and the Cloud Key was a pretty
reliable host for the UniFi Network Controller. Racking everything on an open
frame also really helped me consolidate most of the core network equipment in
one place. I did have to get a couple of longer ethernet cables to reach my
gaming rig and the arcade cabinet I put together - the network core was
installed in the loft, and that's where our gaming rigs and consoles were kept.

Two other things were added in to our home lab right after I put together the
new UniFi core. We acquired a
[Netgear CM1000 cable modem](https://www.netgear.com/home/wifi/modems/cm1000/)
so we could stop renting one from our ISP, and we also found ourselves in
possession of a used
[Dell PowerEdge R200 1U server](https://i.dell.com/sites/doccontent/business/solutions/whitepapers/en/Documents/pe-R200-spec-sheet-new.pdf).
The 1U server was an interesting addition to the home lab - I wasn't totally
sure for what to use it. I ended up utilizing it as an SSH gateway to the
network (a.k.a. a bastion or jump box), and I also got
[Nginx](https://nginx.org/en/) installed on to it to act as a reverse proxy for
the UniFi controller, so I could access it outside the home if necessary (I know
that UniFi has remote functionality through their own services, but I wanted a
direct connection). I also registered a domain to point to my home IP address,
and hooked it up to a
[DDNS](https://www.cloudflare.com/learning/dns/glossary/dynamic-dns/) provider.
I had the DDNS agent running on UniFi Cloud Key, as it supported the service I
was using at the time.

## Last Gasp of Light-Touch Maintenance

The remainder of 2017 (yes, the remainder of 10 months, hah) was also the
remainder of time I had left when my home technology was in what I like to call
a "light touch" state. In March of 2017 we added a
[2nd Generation August Smart Lock](https://august.com/), along with the
[August Connect](https://august.com/) so we could remotely control the lock via
an Internet connection. The smart lock proved to be very useful for us while we
used it. Being able to unlock our front door from the car made getting inside
much easier. We had to stop using the lock when our front door expanded and
contracted over time from heat, however - we were unable to get the door to line
up properly for the lock to function (though manual locks still worked well).
Once we replace the front door, we'll reinstall the lock. The front door was
apparently twisted by a previous owner when they slammed something heavy against
one of the top corners.

In keeping with the smart home technology adoption, we started adding
[Philips Hue](https://www.philips-hue.com/en-us) bulbs (and a hub) in April of
2017. We opted to go with models which had full color control so we could get
different moods in different rooms (primarily for watching movies and
entertaining kids). We also added an
[Arlo Pro 2](https://www.arlo.com/en-us/cameras/ultra/arlo-ultra-2.html) system
in late 2017 to complement our Scout Alarm system; this effectively added in
video cameras to our home security solution. We were happy with what the Arlo
system offered to us at the time. In 2017, it was one of the best options
available without having to resort to setting up a house-wide PoE
(power-over-ethernet) network. Though that being said, we eventually want to
wire up our home with in-wall networking ports. And on key places outside as
well, so we can have PoE cameras on the exterior too.

Backing up in time slightly, the summer of 2017 saw us make major changes to the
home itself. We had solar panels installed from
[SolarCity](https://en.wikipedia.org/wiki/SolarCity) (now a part of
[Tesla](https://www.tesla.com/)). Included with the solar panels was a gateway
to relay solar power generation statistics to SolarCity's online servers, where
we could monitor energy production on a day-to-day basis. We also replaced our
entire HVAC system, which resulted in our replacing the Nest thermostat with a
Trane thermostat, which was supported by the new climate control system (Nest
thermostats, at the time of this writing, still do not support our HVAC, which
has scaling heating & cooling, and not just on/off). The thermostat's Internet
connectivity was provided by [Nexia](https://www.nexiahome.com/), though they
later folded the Nexia branding into Trane.

The close of 2017 saw a formerly-discarded piece of technology return to active
service. I dug out the old Raspberry Pi 1 I had acquired years ago, which was
supposed to power my arcade cabinet. I reinstalled the operating system and set
it up as my SSH gateway for my home lab, thus removing that function from the 1U
Dell server I had previously been using as the SSH gateway.

So what was in store for us next? Two words - Home Assistant.
