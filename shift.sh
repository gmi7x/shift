#!/bin/bash

# prepare useradd
chmod g+w /etc /etc/passwd /etc/group

# install sudo
[ -x /usr/bin/apt-get ] && apt-get update && apt-get install -y sudo && apt-get clean
[ -x /usr/bin/zypper  ] && zypper -n install sudo && zypper clean --all
[ -x /usr/bin/yum     ] && yum install -y sudo && yum clean all

# allow group "root" to do anything
echo "%root ALL=(ALL) NOPASSWD: ALL" >> /etc/sudoers

