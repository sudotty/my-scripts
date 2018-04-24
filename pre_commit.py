#!/usr/bin/env python

import os

# GitHub邮箱
email = 'ai@orca.fun'
# GitHub用户名
username = 'ai-orca'

# 当前git项目的邮箱
gitEmail = 'git config user.email '
# 当前git项目的用户名
gitUser = 'git config user.name '

# github的账号目录下，设置专属Github的姓名和邮箱
if os.getcwd().find("github") != -1:
    os.popen(gitEmail + email)
    os.popen(gitUser + username)

# 打印输出
new_email = os.popen(gitEmail).read()
new_user = os.popen(gitUser).read()
print("git email: ", new_email)
print("git user: ", new_user)
