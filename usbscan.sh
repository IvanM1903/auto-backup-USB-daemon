#! /bin/bash

devmon --exec-on-device DEVICE "rsync -r --update LOCAL_FOLDER_TO_BACKUP DEVICE_FOLDER_DESTINATION" &
