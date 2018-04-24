#!/bin/bash
BACKUP_PATH=/var/opt/gitlab/backups
BACKUP_LOG=$BACKUP_PATH/backup.log
TIMENOW=`date "+%Y-%m-%d %H:%M:%S"`
echo -e "\n\n-----------------------------------------------------------------" >>$BACKUP_LOG
echo "Begin gitlab backup at $TIMENOW..." >>$BACKUP_LOG
gitlab-rake gitlab:backup:create 1>>/var/opt/gitlab/backups/backup.log 2>&1
echo "Finished backup at $TIMENOW!" >>$BACKUP_LOG
