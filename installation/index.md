---
layout: default
title: Installation Guide
---

# Installing Ruby on Rails

Since there is group hack-session during these events, we strongly recommend that everyone bring a laptop with Ruby on Rails installed! If for any reason you run into issues with that tutorial and can't get things running, that's okay too. Just bring your laptop to the event and we can help you get set up.

## Choose Your Own Installation Adventure

There are a variety of ways to install Ruby and Ruby on Rails.

### Recommendation: [Virtual Machine + Vagrant](vagrant.html)

Our recommended setup process involves installing a virtual machine, so that Ruby and Rails run inside a managed environment. This limits installation headaches and puts everyone in the class or on your team on similar footing, regardless of whether your laptop is running Windows, Ubuntu (or other GNU/Linux distribution), or OS X.

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

[**Another alternative**](vagrant2.html) for rolling your own virtual development environment with Vagrant.

**Don't** <del> [follow these instructions](vagrant.html) to get started with a virtual development environment</del>. (It's way out of date.)

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





### Alternative: [Railsbridge Installfest](http://docs.railsbridge.org/installfest/)

Some people find setting up Vagrant and VirtualBox to be an unnecessary headache, or just want the experience of running Rails on their own machine. For whatever reason, if you want to skip the virtual machine and install Ruby and Rails on your own laptop, [the Railsbridge Installfest](http://docs.railsbridge.org/installfest/) will guide you through the process.

### Best alternative for Windows users who aren't power users

This is actually the best scenario we've seen for people using smaller windows machines, chromebooks, netbooks, possibly even tablets.

If the above options don't pan out -- maybe you brought an older or lighter-duty laptop and want to save time & hassle -- you're not out of luck. Using a cloud-based development environment means it will only work if you're connected to the internet, which is becoming rather easy, although you can also get disconnected. You can get started right away, without installing anything on your laptop.

* [Cloud 9](https://c9.io/) (recommended by Michael Hartl of [RailsTutorial](http://railstutorial.com) fame.) [Caveat: C9 is throttling the creation of private instances, so go ahead and use a public one while learning.]
* [Nitrous.io](https://www.nitrous.io/) [Nitrous is also throttling the creation of free installations, sometimes by several days.]
* [Koding.com](https://koding.com/)

[Tamara Temple](http://tamouse.org) has a playlist showing some of the experience setting up on all three of these environments at [Rails Development In The Cloud](https://www.youtube.com/playlist?list=PLFmOAEryuJPGyz0tbnsdLjAIuUuIFovwD). [Tamara] personally likes the Cloud 9 environment the best.
