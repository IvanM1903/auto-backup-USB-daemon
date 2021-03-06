# auto-backup-USB-daemon
This file use the daemon devmon to create a backup when an specific external usb drive has been mounted.


# How does it work

I made a script to run on background when system is started.

Add the next line to your script:

devmon --exec-on-device <DEVICE> "rsync -r --update <local folder to copy> <usb folder to copy on it> " &
  
As you can see this script use rsync, so in case your system doesnt has it, install it with your package manager.

- <DEVICE> = In my case it was /dev/sda1. You can check your device just typing "lsblk" on your terminal and searching for your usb.
- <local folder to copy> = Your full path of the folder you want to backup.
- <usb folder to copy on it> = By default, devmon mount your device on /media/your_usb_label. In my case that was /media/USB-Backup

The script file can be found on this repository. Change the parameters listed before and enjoy it :)
