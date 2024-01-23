#!/bin/bash

#here we set the save directory as the current one
echo "back_up started"
savedir=$(pwd)

#here we make a backup for our home directory
echo "the back_up will be saved in $savedir"
tar -cf "$savedir/my_backup_$(date +%d-%m-%Y_%H-%M-%S).tar" $HOME 2>/dev/null

echo "backup completed successfully"
