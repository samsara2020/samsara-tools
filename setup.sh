#!/bin/bash

echo "替换为清华源"
sed -i 's@^\(deb.*stable main\)$@#\1\ndeb https://mirrors.tuna.tsinghua.edu.cn/termux/termux-packages-24 stable main@' $PREFIX/etc/apt/sources.list

echo "安装 git"
pkg install git

echo "安装 vim"
pkg install vim

echo "安装 ssh"
pkg install openssh

echo "更新安装包"
pkg update

echo "设置编辑器"
export EDITOR=vim
echo "set number" > .vimrc 

echo "设置git"
git config --global user.name "samsara2020"
git config --global user.email "372049396@qq.com"

echo "生成公钥"
ssh-keygen -t rsa -C "372049396@qq.com"

echo "显示公钥"
cat  ~/.ssh/id_rsa.pub

