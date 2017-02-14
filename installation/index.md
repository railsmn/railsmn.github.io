---
layout: default
title: Installation Guide
---

# Installing Ruby on Rails

Since there is group hack-session during these events, we strongly recommend that everyone bring a laptop with Ruby on Rails installed! If for any reason you run into issues with that tutorial and can't get things running, that's okay too. Just bring your laptop to the event and we can help you get set up.

## Choose Your Own Installation Adventure

There are a variety of ways to install Ruby and Ruby on Rails.


### The absolute fastest: Cloud9

[Cloud9](https://c9.io) is an Interactive Development Environment
(IDE) in the cloud. You can use it for a lot of different sorts of
development, including Node.js, PHP, WordPress, and, of course, Ruby
on Rails.

There is a special version specifically for using Michael
Hartl's [RailsTutorial](https://railstutorial.org) and a more general
Ruby on Rails option.

### On your own machine: Vagrant and a Virtual Machine

This setup process involves installing a virtual machine, so that Ruby
and Rails run inside a managed environment. This limits installation
headaches and puts everyone in the class or on your team on similar
footing, regardless of whether your laptop is running Windows, Ubuntu
(or other GNU/Linux distribution), or OS X.

Follow [these instructions](vagrant2.html) for rolling your own
virtual development environment with Vagrant.

<del>Railsist
[Jason Hsu](http://www.meetup.com/ruby-on-rails-for-beginners/members/844108/) has
put up a youtube playlist showing how to create a Rails + Vagrant
virtual development environment
at
[Ruby on High Speed Rails](https://www.youtube.com/playlist?list=PLfd4iay29eVBey-eRCvjWvO1pGj4_E_Us). Look
for his latest vagrant
setup
[here](https://github.com/jhsu802701/vagrant-debian-jessie)</del>
These are out of date or no longer exist.

**Don't** follow <del> [these instructions](vagrant.html) to get
started with a virtual development environment</del>. (They are way
out of date.)

#### Keep this in mind while developing using Vagrant:

<table class="table">
<thead>
<tr>
<th>Things you do on the host Machine</th>
<th>Things you do on the Vagrant VM</th>
</tr>
</thead>
<tbody>
<tr><td>Edit files</td><td>Run tests and the rails server</td></tr>
<tr><td>Manage source with Git</td><td>Install gems</td></tr>
<tr><td>Keep backups</td><td>Run rails generators</td></tr>
<tr><td></td><td>Deploy application</td></tr>
</tbody>
</table>

### [Railsbridge Installfest](http://docs.railsbridge.org/installfest/)

Some people find setting up Vagrant and VirtualBox to be an
unnecessary headache, or just want the experience of running Rails on
their own machine. For whatever reason, if you want to skip the
virtual machine and install Ruby and Rails on your own
laptop,
[the Railsbridge Installfest](http://docs.railsbridge.org/installfest/) will
guide you through the process.

### Best alternative for Windows users who aren't power users

If the above options don't pan out -- maybe you brought an older or
lighter-duty laptop and want to save time & hassle -- you're not out
of luck. Using a cloud-based development environment means it will
only work if you're connected to the internet, which is becoming
rather easy, although you can also get disconnected. You can get
started right away, without installing anything on your laptop.

* [Cloud 9](https://c9.io/) (recommended by Michael Hartl of [RailsTutorial](http://railstutorial.com) fame.) [Caveat: C9 is throttling the creation of private instances, so go ahead and use a public one while learning.]
* [Nitrous.io](https://www.nitrous.io/) [Nitrous is also throttling the creation of free installations, sometimes by several days.]
* [Koding.com](https://koding.com/)

[Tamara Temple](http://tamouse.org) has a playlist showing some of the
experience setting up on all three of these environments
at
[Rails Development In The Cloud](https://www.youtube.com/playlist?list=PLFmOAEryuJPGyz0tbnsdLjAIuUuIFovwD). Tamara
personally likes and recommends the Cloud 9 environment the best of these.
