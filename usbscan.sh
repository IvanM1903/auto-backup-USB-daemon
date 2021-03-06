#! /bin/bash

devmon --exec-on-device /dev/sda1 "rsync -r --update localFolder /media/LABEL/" &
