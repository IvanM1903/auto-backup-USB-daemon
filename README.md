# auto-backup-USB-daemon
This file use the daemon devmon to create a backup when an specific external usb drive has been mounted.

# How does it work

I made a script to run on background when system is started.

Add the next line to your script:

devmon --exec-on-device ___DEVICE___ "rsync -r --update ___local folder to copy___  ___usb folder to copy on it___ " &
  
As you can see this script use rsync, so in case your system doesnt has it, install it with your package manager.

- The parameter DEVICE = In my case it was /dev/sda1. You can check your device just typing "lsblk" on your terminal and searching for your usb.
- The parameter local folder to copy = Your full path of the folder you want to backup.
- The parameter usb folder to copy on it = By default, devmon mount your device on /media/your_usb_label. In my case that was /media/USB-Backup

The script file can be found on this repository. Change the parameters listed before and enjoy it :)

# How to make it run on background

You have to set up your script on ~/.config/autostart-scripts/

After that, give it execution permission with: chmod +x script.sh
