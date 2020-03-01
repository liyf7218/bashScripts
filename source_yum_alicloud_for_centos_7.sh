#!/bin/bash

echo "replace yum source with alicloud-centos7 source..."

echo "======> cp /etc/yum.repos.d/CentOS-Base.repo /etc/yum.repos.d/CentOS-Base.repo.backup"
sudo cp /etc/yum.repos.d/CentOS-Base.repo /etc/yum.repos.d/CentOS-Base.repo.backup

echo "======> wget -O /etc/yum.repos.d/CentOS-Base.repo http://mirrors.aliyun.com/repo/Centos-7.repo"
sudo wget -O /etc/yum.repos.d/CentOS-Base.repo http://mirrors.aliyun.com/repo/Centos-7.repo

echo "======> yum clean all"
sudo yum clean all

echo "======> yum makecache
sudo yum makecache

echo "======> update local yum"
sudo yum -y update
