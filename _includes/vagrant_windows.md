There are a couple of additional steps needed to setup VirtualBox on Windows. Follow these steps before running the 'vagrant up' command:

1.	Create a folder somewhere on your computer (either on the Desktop or 'My Documents' directory) called "workspace".
2.	Navigate to [railsmn-dev-box](http://github.com/railsmn/railsmn-dev-box) in your browser and click "Clone in Desktop"
![Clone in Desktop](https://github-images.s3.amazonaws.com/windows/repository/windows-clone-in-desktop.png)
3.	Once downloaded, open the 'railsmn-dev-box' folder on your computer, using File Explorer.
4.	Now, go back to the folder you created in Step 1, and copy the [FULL PATH](http://technet.microsoft.com/en-us/magazine/ff678296.aspx)
5.	Next, in `railsmn-dev-box`, we want to edit the 'Vagrantfile' file. Open it with your favorite text editor, and edit the line that reads: ```config.vm.share_folder "open_camp_directory", "/home/vagrant/open_camp", "**Windows Folder Path**"```

	Replace the 'Windows Folder Path' text with the FULL PATH that you copied in Step 4.

	**IMPORTANT:** Windows will, by default, paste something like this ```"C:\Users\Mo\Desktop\open_camp_folder"``` However, Vagrant requires forward slashes - make sure that you change out the backwards slashes, and replace them with forward slashes. The end result should look something like this:
	```config.vm.share_folder "open_camp_directory", "/home/vagrant/open_camp", "C:/Users/Mo/Desktop/open_camp_folder"```
6. 	Open Start -> Applications -> Github -> Git Shell: CD into the `railsmn-dev-box` directory from Step 2 (ie: Where the ```Vagrantfile``` exists).
7.	Run the ```vagrant up``` command.
* 	More information about this process is available on the [Vagrant project's website](http://docs-v1.vagrantup.com/v1/docs/config/vm/share_folder.html)
