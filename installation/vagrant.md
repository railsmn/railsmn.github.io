---
layout: default
title: Virtual Machine Setup with VirtualBox and Vagrant
---

# Ruby on Rails: Virtual Machine Setup with VirtualBox and Vagrant

------

## Step 1: Download and install

Straight away, there are three things to download and install:

* [Git](http://git-scm.com/downloads) - [git](http://git-scm.com/) is a program that manages source code, we'll use it later to download parts of our virtual machine. Go to [the downloads page](http://git-scm.com/downloads) and choose the package for your operating system.

* [VirtualBox](https://www.virtualbox.org/wiki/Downloads) - [VirtualBox](https://www.virtualbox.org) is a free program that runs our virtual machine -- in effect, creating a "computer inside your computer". Look for the **VirtualBox platform packages** section and find the link for your operating system.

* [Vagrant](http://downloads.vagrantup.com/) - [Vagrant](http://vagrantup.com) provides a scriptable interface to the virtual machine, so we can start and stop the virtual machine on demand. We'll be using this shortly to download, install and configure Ruby and Ruby on Rails. Click on the highest-number folder icon to download the specific package for your operating system.

------

## Step 2: Building the virtual machine

<div class="panel panel-warning">
  <div class="panel-heading">
    <h3 class="panel-title">For Windows Users</h3>
  </div>
  <div class="panel-body">
    <p>There are a couple of additional steps needed to setup VirtualBox on Windows. Follow these steps before running the &#8216;vagrant up&#8217; command:</p>

    <ol>
    <li>Create a folder somewhere on your computer (either on the Desktop or &#8216;My Documents&#8217; directory) called &#8220;workspace&#8221;.</li>
    <li>Navigate to <a href="http://github.com/railsmn/railsmn-dev-box">railsmn-dev-box</a> in your browser and click &#8220;Clone in Desktop&#8221;
    <img src="https://github-images.s3.amazonaws.com/windows/repository/windows-clone-in-desktop.png" alt="Clone in Desktop" title="" /></li>
    <li>Once downloaded, open the &#8216;railsmn-dev-box&#8217; folder on your computer, using File Explorer.</li>
    <li>Now, go back to the folder you created in Step 1, and copy the <a href="http://technet.microsoft.com/en-us/magazine/ff678296.aspx">FULL PATH</a></li>
    <li><p>Next, in <code>railsmn-dev-box</code>, we want to edit the &#8216;Vagrantfile&#8217; file. Open it with your favorite text editor, and edit the line that reads: <code>config.vm.share_folder "open_camp_directory", "/home/vagrant/open_camp", "**Windows Folder Path**"</code></p>

    <p>Replace the &#8216;Windows Folder Path&#8217; text with the FULL PATH that you copied in Step 4.</p>

    <p><strong>IMPORTANT:</strong> Windows will, by default, paste something like this <code>"C:\Users\Mo\Desktop\open_camp_folder"</code> However, Vagrant requires forward slashes - make sure that you change out the backwards slashes, and replace them with forward slashes. The end result should look something like this:
    <code>config.vm.share_folder "open_camp_directory", "/home/vagrant/open_camp", "C:/Users/Mo/Desktop/open_camp_folder"</code></p></li>
    <li>Open Start ➜ Applications ➜ Github ➜ Git Shell: <kbd>cd</kbd> into the <code>railsmn-dev-box</code> directory from Step 2 (ie: Where the <code>Vagrantfile</code> exists).</li>
    <li>Run the <code>vagrant up</code> command.</li>
    <li>More information about this process is available on the <a href="http://docs-v1.vagrantup.com/v1/docs/config/vm/share_folder.html">Vagrant project&#8217;s website</a></li>
    </ol>
  </div>
</div>

<div class="panel panel-primary">
  <div class="panel-heading">
    <h3 class="panel-title">Everybody else</h3>
  </div>
  <div class="panel-body">
    <p>In the terminal application,</p>

    <pre><code>  > git clone git://github.com/railsmn/railsmn-dev-box.git
  > cd railsmn-dev-box
  > vagrant up</code></pre>

  </div>
</div>


<div class="panel panel-success">
  <div class="panel-heading">
    <h3 class="panel-title">Everybody</h3>
  </div>
  <div class="panel-body">
    <h4>What's happening?</h4>
    <p>Vagrant will download the <em>base image</em> for our virtual machine, start the machine running, and instruct it to begin downloading Ruby, Rails, and associated helpful libraries. This can take 3-45 minutes, depending on the speed of your internet connection.</p>
    <hr />
    <h4>How will we know when it's working?</h4>

    <p>In the terminal application,</p>

    <pre><code>  > vagrant ssh
  Welcome to your Vagrant-built virtual machine.
  > rails -v
  Rails 4.0.0</code></pre>

    <p>If you see an error message, ask someone for help!</p>

  </div>
</div>

