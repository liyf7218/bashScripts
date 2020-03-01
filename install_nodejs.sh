#!/bin/bash

echo "======> wget -O /usr/local/src/node.tar.xz  https://npm.taobao.org/mirrors/node/v12.0.0/node-v12.0.0-linux-x64.tar.xz"
wget https://npm.taobao.org/mirrors/node/v12.0.0/node-v12.0.0-linux-x64.tar.xz

echo "======> unzip"
xz -d node-v12.0.0-linux-x64.tar.xz
tar -xvf node-v12.0.0-linux-x64.tar
sudo mkdir /usr/local/src/node
sudo mv node-v12.0.0-linux-x64/* /usr/local/src/node/
sudo rm -rf node-v12.0.0-linux-x*

echo "======> Add node to $PATH if not exist"
source ./funcs/isexist.sh

if isexist $PATH /usr/local/src/node/bin ; then
	echo '/usr/local/src/node/bin is already in $PATH'
else
	echo 'Append $PATH=$PATH:/usr/local/src/node/bin to ~/.bashrc'
	#sed '$a $PATH=$PATH:/usr/local/src/node/bin' ~/.bashrc
	echo 'export PATH=$PATH:/usr/local/src/node/bin' >> ~/.bashrc 
	echo 'source ~/.bashrc'
	source ~/.bashrc
fi

echo "=======> node --version && npm --version"
node --version
npm --version
