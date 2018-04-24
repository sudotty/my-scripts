#!/usr/bin/env python

import os

# 环境变量
ENV = os.environ
# GitHub邮箱
orcaEmail = ENV.get("ORCA_EMAIL")
# GitHub用户名
orcaName = ENV.get("ORCA_NAME")

# 当前git项目的邮箱
gitEmail = 'git config user.email '
# 当前git项目的用户名
gitUser = 'git config user.name '

# github的账号目录下，设置专属Github的姓名和邮箱
if os.getcwd().find("github") != -1:
    os.popen(gitEmail + orcaEmail)
    os.popen(gitUser + orcaName)
