---
layout: default
title: Yet Another Tutorial on Creating a Vagrant Rails Box
---

# {{page.title}}

If you still wish to roll your own virtual development environment, these steps should work.
It is a good exercise to do this for yourself, although it takes a bit of time.

The commands you enter on your local host are prefixed by `$` and the commands you enter on the virtual machine are prefixed by `vagrant$`.

## Setting up your local "host" machine

1. [Install VirtualBox](https://www.virtualbox.org/wiki/Downloads)
2. [Install Vagrant](https://www.vagrantup.com/)
3. Create a new virtual project:

        $ cd to/the/place/i/store/my/projects
        $ mkdir new_project
        $ cd new_project
        $ vagrant init ubuntu/trusty64

3. Modify the `Vagrantfile` to include the following line in the `configure` section:

          config.vm.network "forwarded_port", guest: 3000, host: 3000

3. Then uncomment the provider block and set the memory to at least 1024 (since we'll be compiling ruby):

          config.vm.provider "virtualbox" do |vb|
            # Display the VirtualBox GUI when booting the machine
            # vb.gui = true

            # Customize the amount of memory on the VM:
            vb.memory = "1024"
          end

    You can leave the `vb.gui` line commented out, and you really want to at this point.
    The virtual machine needs 1024 GB of memory in order to successfully compile ruby and it's documentation.

3. Save the `Vagrantfile` and return to the command prompt.

3. Then start up the VM and log into it:

        $ vagrant up
        $ vagrant ssh

## Provisioning and Configuring you virtual machine

4. Follow [these excellent instructions](http://ryanbigg.com/2014/10/ubuntu-ruby-ruby-install-chruby-and-you/)

## Initializing your Rails project

5. Initialize your rails project:

        vagrant$ cp .ruby-version /vagrant # need this to get your ruby version over to the project dir
        vagrant$ cd /vagrant # this is mapped to the host machine folder for your project
        vagrant$ rails new . [options] # select the options you want in your project

    I suggest starting out with these options: `--skip-spring --skip-turbolinks` as they frequently cause people starting out problems.

6. Start up the rails server.

        vagrant$ rails s -b 0.0.0.0

    Since you added that `config.vm.netork` line above, you can access the rails server on it's default port of 3000 with the line above.


6. Browse to `http://localhost:3000` and make sure you see the standard Rails welcome page. Make sure to check the log if anything looks wrong.

7. Exit out of the VM shell or open another local terminal and put the finishing touches on your new project set up:

        $ git init
        $ git add --all --verbose
        $ git commit -m 'Initial Commit'

    Get in the habit of using source code management early and often.

7. Edit and manage your files on your local host machine with your favourite editor, view the results by pointing your browser at `http://localhost:3000`,
   run your tests on the VM via `vagrant ssh --command 'cd /vagrant && rake'`.

8. Install gems, bundle, run migrations, etc., in the VM. It's usually a good idea to keep a terminal window open on the virtual machine to conveniently do things needed there.

## Streamlining future Project Setup

All that work to create the box, now you can package it up so you don't have to do it all again. The vagrant `package` command creates a box file you can save and reuse.

1. Saving your work

    From the `new_project` directory on the host machine, enter:

        $ vagrant package --output rails4-2-4.box # you can choose your own name for the box file if you wish
        $ vagrant box add --name rails4-2-4 rails4-2-4.box

2. Starting your new virtual machin

    The next time you want to create a VM for a rails project, instead of the previous `vagrant init ubuntu/trusty64` command, you enter:

        $ mkdir another_new_project
        $ cd another_new_project
        $ vagrant init rails4-2-4

    (Modify the `Vagrantfile` as needed for this project.)

        $ vagrant up
        $ vagrant ssh

    (Note that you may be asked for your password during initial startup. This would be your local user password.)

3. Creating your new project

    At this point, you don't have to do any more installation of Ruby, Rails, Git, and the rest because it's already there! You can go straight on to creating your project with `rails new`.

This should give you a Rails development box suitable for beginning projects and learning your way arround Rails sufficiently. When you want to start developing a "real" application, you'll want to also have on your system the database(s) you'll be using in production, which you'll need to install on your VM as well. At that point, it's time to reach for more advanced instructions with automation, which are all over the web. Search for terms like 'vagrant ansible starter kit'. Or you may just go back and use Jason's scheme with [vagrant-debian-jesse](https://github.com/jhsu802701/vagrant-debian-jessie) and [generic_app](https://github.com/jhsu802701/generic_app).
