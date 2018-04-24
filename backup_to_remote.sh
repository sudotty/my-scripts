#!/bin/bash

#gitlab 服务器备份路径
LocalBackDir=/var/opt/gitlab/backups

# 远程备份服务器 gitlab备份文件存放路径
RemoteBackDir=/data/backups/gitlab

# 远程备份服务器 登录账户
RemoteUser=orca

# 远程备份服务器 IP地址
RemoteIP=a.b.c.d

#当前系统日期
DATE=`date +"%Y-%m-%d"`

#Log存放路径
LogFile=$LocalBackDir/log/$DATE.log

# 查找 gitlab本地备份目录下 时间为一天之内的，并且后缀为.tar的gitlab备份文件
BACKUPFILE_SEND_TO_REMOTE=$(find $LocalBackDir -type f -mtime -1  -name '*.tar*')

#新建日志文件
touch $LogFile

#追加日志到日志文件
echo "Gitlab auto backup to remote server, start at  $(date +"%Y-%m-%d %H:%M:%S")" >>  $LogFile
echo "---------------------------------------------------------------------------" >> $LogFile

# 输出日志，打印出每次scp的文件名
echo "---------------------The file to scp to remote server is: $BACKUPFILE_SEND_TO_REMOTE-------------------------------" >> $LogFile


#备份到远程服务器
scp $BACKUPFILE_SEND_TO_REMOTE $RemoteUser@$RemoteIP:$RemoteBackDir

#追加日志到日志文件
echo "---------------------------------------------------------------------------" >> $LogFile