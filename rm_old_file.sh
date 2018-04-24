#!/bin/bash

#gitlab备份文件存放路径
GitlabBackDir=/var/opt/gitlab/backups


# 查找远程备份路径下，超过7天且文件后缀为.tar 的 Gitlab备份文件 然后删除
find $GitlabBackDir -type f -ctime +7 -name '*.tar*' -exec rm {} \;
