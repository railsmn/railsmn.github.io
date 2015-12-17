---
layout: default
title: Installation Guide
---

# Installing Ruby on Rails

Since there is group hack-session during these events, we strongly recommend that everyone bring a laptop with Ruby on Rails installed! If for any reason you run into issues with that tutorial and can't get things running, that's okay too. Just bring your laptop to the event and we can help you get set up.

## Choose Your Own Installation Adventure

There are a variety of ways to install Ruby and Ruby on Rails.

### Recommendation: [Virtual Machine + Vagrant](vagrant.html)

Our recommended setup process involves installing a virtual machine, so that Ruby and Rails run inside a managed environment. This limits installation headaches and puts everyone in the class on similar footing, regardless of whether your laptop is running Windows, Ubuntu (or other GNU/Linux distribution), or OS X.

Railsist [Jason Hsu](http://www.meetup.com/ruby-on-rails-for-beginners/members/844108/) has put up a youtube playlist showing how to create a Rails + Vagrant virtual development environment at [Ruby on High Speed Rails](https://www.youtube.com/playlist?list=PLfd4iay29eVBey-eRCvjWvO1pGj4_E_Us).

Don't [follow these instructions](vagrant.html) to get started with a virtual development environment. (It's way out of date.)

Another alternative for rolling your own virtual development environment:

1. [Install VirtualBox](https://www.virtualbox.org/wiki/Downloads)
2. [Install Vagrant](https://www.vagrantup.com/)
3. Create a new virtual project:

        $ cd to/the/place/i/store/my/projects
        $ mkdir new_project
        $ cd new_project
        $ vagrant init ubuntu/trusty64
        $ vagrant up
        $ vagrant ssh

4. Follow [these excellent instructions](http://ryanbigg.com/2014/10/ubuntu-ruby-ruby-install-chruby-and-you/)
5. Initialize your rails project:

        vagrant$ cd /vagrant # this is mapped to the host machine folder for your project
        vagrant$ rails new . [options] # select the options you want in your project

6. Start up the rails server:

        vagrant$ rails s -b 0.0.0.0

7. Edit and manage your files on your local host machine with your favourite editor, view the results by pointing your browser at `http://localhost:3000`.
8. Install gems, bundle, run migrations, etc., in the VM.


### Alternative: [Railsbridge Installfest](http://docs.railsbridge.org/installfest/)

Some people find setting up Vagrant and VirtualBox to be an unnecessary headache, or just want the experience of running Rails on their own machine. For whatever reason, if you want to skip the virtual machine and install Ruby and Rails on your own laptop, [the Railsbridge Installfest](http://docs.railsbridge.org/installfest/) will guide you through the process.

### Worst-case scenario: Cloud-based Development

If the above options don't pan out -- maybe you brought an older or lighter-duty laptop and want to save time & hassle -- you're not out of luck. Using a cloud-based development environment means it will only work if you're connected to the internet (and wi-fi can be flaky!) but you can get started right away, without installing anything on your laptop.

* [Cloud 9](https://c9.io/) (recommended by Michael Hartl of [RailsTutorial](http://railstutorial.com) fame.)
* [Nitrous.io](https://www.nitrous.io/)
* [Koding.com](https://koding.com/)

[Tamara Temple](http://tamouse.org) has a playlist showing some of the experience setting up on all three of these environments at [Rails Development In The Cloud](https://www.youtube.com/playlist?list=PLFmOAEryuJPGyz0tbnsdLjAIuUuIFovwD).
