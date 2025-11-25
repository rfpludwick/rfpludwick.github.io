---
title: Home Lab & Network Evolution, Part 5
layout: post
date: 2021-12-03
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
* [Part 4]({% post_url 2021-11-26-home-lab-network-evolution-4 %})

## Home Programming

With the exception of the AWS DDNS client I had previously worked on, I didn't
have any substantial custom-written software for my home technology. That broke
in a big way starting in the second half of 2020. I built a
[custom script to clear out what I termed to be "phantom" clients from my UniFi
Controller]({% link _projects/unifi-phantom-clients-cleanup.md %}).
You can read a bit more about that project at the link.

In keeping with programming software for my home, I got a serious jolt from the
[ice storm that hit Oregon in February of 2021](https://www.oregonlive.com/galleries/YXRTYXIRYBFPDH7HPLHAXR2NRM/).
We had two power outages, lasting 12 and 6 hours each, respectively. Both times
I had to manually power up the Synology NAS, which does not automatically power
back on after a power loss and subsequent restoration. That wasn't a major pain,
but the real one was when I realized I had to then SSH in to the reverse proxy
Raspberry Pi and remount the NFS mount shared from the NAS. At this point I had
spent two years working more and more in a DevOps-style role in my career and
yearned for more automation. So I ended up crafting a script that could run on a
cron schedule on the Raspberry Pi to detect when the NFS mount was not mounted,
and then try to mount it. I created a new
[GitHub repository](https://github.com/rfpludwick/home-network-scripts) for this
script, as I envisioned writing others in the course of time.

This repository, however, did not last long. I had finally gotten a taste of
deploying some DevOps at home. And I liked it. I realized that I could very
easily start to manage some of my home lab infrastructure using
[Terraform](https://www.terraform.io/), [Ansible](https://www.ansible.com/),
[Packer](https://www.packer.io/), and other manner of tools I'd been using the
last couple of years in my work - and that I really ought to make Ansible
playbooks to rebuild some of the things I'd built by hand, such as my reverse
proxy configurations. I did not want to show quite that much information about
my home lab setup to the public, so I made that a private repository on GitHub
(sorry!). It made my initial home network scripts repository moot.

My new infrastructure repository had all sorts of things in it now:

* Ansible playbooks to manage all three Raspberry Pis, as well as some things on
the Synology NAS.
* Terraform configurations to manage my GitHub repositories, as well as the few
AWS resources I use in conjunction with my home lab.
* Documentation of my home lab via [Jekyll](https://jekyllrb.com/) (hey, the
same thing that [GitHub Pages](https://pages.github.com/) uses; not a
coincidence); served internally using the NAS.

But why stop there? I'd recently switched over to using
[VSCode](https://code.visualstudio.com/) as my editor of choice, having recently
left the [JetBrains](https://www.jetbrains.com/) family of IDEs (JetBrains are
still really good, but VSCode is very excellent). And I was getting into using
[devcontainers](https://code.visualstudio.com/docs/remote/create-dev-container)
for development, and kept finding that I didn't like having to wait a long time
to rebuild/reprovision my devcontainers. So I introduced Packer to the lineup
and made an Ansible playbook to create my own devcontainer image using
Microsoft's as a base. But wait... Where would I store that Docker image?

Further down the rabbit hole I went. I got
[Nexus3 OSS](https://www.sonatype.com/products/repository-oss) installed on the
NAS via Docker, and then configured it to be able to store Docker images. Now I
was able to build my own base devcontainer image to use in VSCode, helping me
speed up development time of my home programming projects. And since I was now
creating reusable Docker images, I decided to consolidate the various cron-like
services I was running on the NAS. I combined my AWS DDNS script, my UniFi
phantom clients cleanup script, and the Let's Encrypt service onto one single
"crons" image for consolidation.

I then introduced a variety of VSCode tasks to be able to very easily run things
like software upgrades on my hardware and software. Unfortunately, I cannot
show those to you as they're all in my infrastructure repository. All of this
happened in pretty quick order at the end of 2020 and into the first half of 2021.
Pandemic, am I right?

## UniFi Dream Machine Pro To The Future

Aside from the introduction of many DevOps tools, concepts, and processes to my
home lab and technology, 2021 only had one other major change to my home lab - I
replaced the UniFi Cloud Key and the UniFi Security Gateway with a
[UniFi Dream Machine Pro](https://store.ui.com/collections/unifi-network-unifi-os-consoles/products/udm-pro)
(UDMP). My reasons for this were quite simple:

* The cloud key was degrading in performance due to the high number of devices
on the network.
* I wanted to enable the intrusion prevention system in the network controller,
and the USG would have had to severely throttle my inbound speeds to do so.

So far, generally good with the UDMP. It does have some memory usage problems
and likely a memory leak or two, but slowly the Ubiquiti folks are getting the
resource usage on the device to improve. At first I had to reboot the device
practically every week, but I don't think I've rebooted it for a few months now.

So where does that leave me now? What does the future look like for me? Further
down the rabbit hole I intend to go. I'm planning on building out a cluster of 4
[Raspberry Pi 4Bs](https://www.raspberrypi.org/products/raspberry-pi-4-model-b/)
in order to install and operate a local [Kubernetes](https://kubernetes.io/)
cluster. I want to move as many Docker containers from my NAS over and allow my
NAS to operate a bit more in just a dumb file storage role and offload the
compute functions in my home lab to the Kubernetes cluster. Like I said before,
the CPU seems to be the bottleneck on the NAS, and while the system's
performance is generally fine, I've kept throwing more and more at it and I want
to stem the tide sooner rather than later. Bitwarden doesn't provide Kubernetes
or [Helm](https://helm.sh/) configurations for installation into that type of
environment, so I may need to write something up myself to move it from the NAS,
or just keep it there. And I'll likely keep Plex running on the NAS, as I'll get
much better transcoding with the Plex than with a Raspberry Pi.

I want to ditch both the Scout Alarm and Arlo Pro systems for a newer, fully
integrated home security solution. As of right now, I don't totally know what
that will look like, but I want it to have integrations with Home Assistant if
at all possible. If the new system comes with its own smart lock, then the
August lock will be made redundant too. I also want to get rid of the Nest
Protects at some point as well. I've been slowly moving my life away from Google
for privacy reasons, and the Nest Protects are one of the few remaining Google
tethers I still have.

I want to get the Bond Bridge hooked up to our ceiling fans too, but I just
haven't spent the time to figure that out. I believe I'll have to partially
disassemble the fans in order to connect a compatible receiver to them, which is
why I've been procrastinating there. I would also like to get something like a
[Purple Air](https://www2.purpleair.com/collections/air-quality-sensors) sensor
connected so we can know the air quality around our home. I'd like to get a home
power monitoring solution connected, like [Sense](https://sense.com/).

I have some coworkers who have some simply amazing and massive setups. From
crypto mining to petabyte-scale media setups, their technological investments
completely dwarf my own. I'm not trying to keep up by any measure, for many
reasons - I don't want to spend that kind of time in maintenance, I don't want
to spend that money, and I currently don't have the room to setup a proper rack
past about 12U high.

Lots of plans, so little time. Well, that generally wraps it up for my home lab
evolution to where it stands today, as well as where I'm looking to go in the
next few years. See y'all the next time I have some ridiculous, long story to
tell.
