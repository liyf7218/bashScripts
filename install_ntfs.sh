#!/bin/bash

sudo wget -O /etc/yum.repos.d/epel.repo http://mirrors.aliyun.com/repo/epel-7.repo

sudo yum update

sudo yum install ntfs-3g
