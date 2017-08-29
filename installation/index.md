---
layout: default
title: Installation Guide
---

# Installing Ruby on Rails

Since there is group hack-session during these events, we strongly
recommend that everyone bring a laptop with Ruby on Rails installed!
If for any reason you run into issues with that tutorial and can't get
things running, that's okay too. Just bring your laptop to the event
and we can help you get set up.

## Recommended for Beginners

[Cloud9](https://c9.io) is an Interactive Development Environment
(IDE) in the cloud. You can use it for a lot of different sorts of
development, including Node.js, PHP, WordPress, and, of course, Ruby
on Rails.

There is a special version specifically for using Michael
Hartl's [RailsTutorial](https://railstutorial.org) and a more general
Ruby on Rails option.

## Recommended for Experienced Developers

### The Docker Way (Easiest)
* Linux is the preferred OS.  If you must use MacOS or Windows as your host OS, you can use VirtualBox to install a Linux virtual machine and then run Docker in Linux.  The full instructions for doing this are in the [VirtualBox Tutorial](https://github.com/jhsu802701/tutorial-virtualbox).
* Once you have Linux installed as your host OS or virtual OS, install Docker.  For more details, go to the [Docker Tutorial](https://github.com/jhsu802701/tutorial-docker-stretch) to get started.

### Install a virtual machine for a Ruby on Rails development environment.

This setup involves installing a virtual machine, so that Ruby
and Rails run inside a managed environment. This limits installation
headaches and puts everyone on a project, a class, or on your team on similar
footing, regardless of whether your laptop is running Windows, GNU/Linux,
or macOS (OSX).

Follow the instructions [here](vagrant2.html).

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

### Railsbridge Installfest (Hardest)

Some people find setting up Vagrant and VirtualBox to be an
unnecessary headache, or just want the experience of running Rails on
their own machine. For whatever reason, if you want to skip the
virtual machine and install Ruby and Rails on your own
laptop,
[the Railsbridge Installfest](http://docs.railsbridge.org/installfest/) will
guide you through the process.
