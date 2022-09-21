---
title: Keeping in Touch
layout: post
date: 2022-09-20
categories:
  - social
  - family
  - friendships
---

## It's Been Awhile

For the past few weeks I've been thinking about how some folks do a great job at
keeping in touch with others, while most everybody else just simply don't. I'm
in the latter camp. I've known for pretty much my entire adult life that I'm
piss-poor at keeping in touch with others. I'm not sure how many friendships
I've had wither on the vine where all they needed was a little bit more of my
TLC. It's not that I don't want to keep in touch with folks... It's that I'm
busy! I have a lot going on. Heck, it's not that I don't care about your
anniversary or birthday, I'm just shitty at remembering when it is!

## Reminders/Todos

Some years ago I decided to try to use the power of
[iCloud Calendar](https://www.icloud.com/calendar) to track annual milestones.
Year after year of my adult life I'd find myself scrambling to give someone a
call or text them when their birthday arrived, and too many times I'd end up
messaging them the day after, when some family member would ask "Did you wish
Joe Schmoe a happy birthday yesterday?" Unfortunately, I found using iCloud
Calendar to be insufficient for my needs. By default, birthdays will show up if
you have the individual as a [Contact](https://www.icloud.com/contacts) with
their birthday listed. Then at 9am on the day of their birthday, you'll possibly
get a notification that it's their birthday. But that's really it. What if I
miss the notification? What if I need to buy them a gift in advance? This wasn't
meeting my needs. I needed something with more reminders and some semblance of
permanence until I achieved my goal and marked it as **done** - buying their
gift in advance, wishing them a happy birthday or anniversary, etc.

I decided to try out using
[Home Assistant]({% post_url 2021-11-26-home-lab-network-evolution-4 %}) to
store my expanded reminders system. For milestones where I needed to buy a gift
in advance, I had the following sequence setup:

1. A reminder at 4 weeks before the milestone, imploring me to plan the gift I
will buy
2. A reminder at 2 weeks before the milestone, telling me to buy the gift I
planned
3. A reminder the day of the milestone, to send them well wishes

This system started to work a little better for me - I was now better able to
remember important dates for others! Unfortunately... using Home Assistant in
this manner was unwieldy and cumbersome to manage. I had to have three
configurations per milestone, and there were a number of milestones I had in
play. So while this system was working well for me, the technology I'd chosen to
implement it was insufficient and didn't scale well if I wanted to add more
milestones. Enter [Todoist](https://todoist.com).

I've been using Todoist for quite some time now, and it's done wonders to help
me keep my life organized. I figured since it's been the key organization system
to keeping my life organized, I'd give it a go for milestone reminders. All I
did was to copy over my three-sequence process (and single reminders for
milestones where a gift was not necessary) with one main task listing their
birthday and year (so I could remember how old their milestone was), with three
subtasks for my sequence above. It looks similar like this today:

![Todoist task & subtasks](/assets/images/2022-09-19-keeping-in-touch/todoist.png)

The result? A vastly improved and manageable milestone reminder system. I
haven't missed a gift since I started doing this in Home Assistant, and now it
takes me almost no time at all to check off a Todoist item when I've bought a
gift. Additionally, switching to Todoist has indeed made management of milestone
reminders much easier - I have a friend getting married this upcoming January,
and at that time I'll add an annual reminder to wish them a happy anniversary,
and it will take me all of 30 seconds to add that reminder.

As an aside, I highly recommend Todoist to help organize your life. It's helped
me tremendously.

## Keeping in Touch, Regularly

About 6 months ago it occurred to me that I could possibly use Todoist to help
me keep in touch with folks on a more regular basis. Outside of these milestone
dates, I had a spotty track record in keeping in touch with virtually everybody
from close family to professional acquaintances. So, roughly six months ago, I
setup a weekly reminder on Sundays titled "Reach Out To Someone And Say Hi."

At first my approach was pretty ad-hoc and scattershot. I started by going back
about a year or so in my SMS history and picking out folks I knew I wanted and
needed to stay in touch with more regularly. Even this approach alone led me to
reconnect and strengthen connections with many folks where we'd let the threads
of our connection fray. From there I would circle back to my SMS history on a
weekly basis and try to refresh most of those conversations at least every month
or so, depending on whomever I was talking with. Close family were more
frequent; professional acquaintances I'd let linger for maybe 3 months or so.

I would occasionally try to make sure I kept in touch using other platforms as
well (I don't use Facebook or any other Meta product, which is a severe
hindrance in terms of keeping in touch with folks). SMS represented the bulk of
my efforts to keep in touch with others, but there are a few who use
[Signal](https://www.signal.org/), some who use [Discord](https://discord.com/),
and even two folks I keep in touch with using
[LinkedIn](https://www.linkedin.com/). Trying to remember to keep in touch
across all platforms, and who used what platform, turned out to be something I
could not just keep in my head and remember.

A few weeks back I decided to setup a note in [Joplin](https://joplinapp.org/)
(the application I use to take notes, much like
[Evernote](https://evernote.com/)) to pair with my Sunday efforts. Over the
course of a couple of weeks I fully fleshed it out in tabular format to track
the following:

| Person         | Methods     | Last Contact | Target Fequency |
| -------------- | ----------- | ------------ | --------------- |
| Father Ludwick | SMS/Signal  | 2022-01-02   | Every 2 months  |
| Sister Ludwick | Discord     | 2022-03-05   | Every month     |

For the record, this is **not** how often I contact my father and sister. I have
a few tables, all marked with some overarching category like *Family* or
*Professional*. This helped me really make sure that I was keeping in touch with
those most important to me in various arenas of my life. So far, a few weeks in,
this pairing of Todoist and Joplin is working out quite well for me.

As a second aside, I highly recommend Joplin as your primary note-taking app. I
hooked mine up to a WebDAV server I'm hosting in my home and it's been excellent
for me.

## Most People Are Bad at This

Now that I've been regularly trying to keep in touch with folks the past 6
months or so, I have reached a conclusion: most people are bad at keeping in
touch. Years ago, my best friend once lamented that he had to be the one to keep
most of his friendships alive - that most people, even close friends, just let
him be the one to initiate conversations way more than 50% of the time. At the
time I said "Surely you must have had a run of bad luck!" I have since changed
my tune. Most people are pretty bad at keeping in touch with others (this is not
a rigorous study, but I can easily track data from my own efforts). It certainly
seems to be the case that as we age, our meaningful social connection skills
continually degrade. I do wonder what social media's role is in all of this,
however.

On average, I'd say that I'm initiating conversations with a substantial
majority folks in my Joplin note. If my *Last Contact* date plus my *Target
Frequency* is in the past, then I'll send a message just to check what's up and
see what's new in their life. Roughly 80% of the time, when I go refresh a
connection with a new message, the last conversation we had will have been from
the **last time** I went through refreshing connections.

It's a bit dispiriting to come to this conclusion, but I think I knew it all
along. Most humans are bad at keeping threads of connection alive over lengthy
periods of time - they aren't naturally the ones to proactively strike up
conversations when those threads start to stretch thin. One might argue that I
myself don't **really** care about others if I've resorted to technological
means to ensure I stay in touch, and there's some merit to that argument.
However, at least I'm trying to do something about it: I've realized that I
simply cannot do so "organically" so I've supplemented my processes to ensure I
stay in touch.

Maybe I've helped inspire you to be more proactive in keeping in touch with
those you care about? If you develop a solid method to keep in touch with others
that isn't just blasting life updates all over social media, I'd love to hear
it.
