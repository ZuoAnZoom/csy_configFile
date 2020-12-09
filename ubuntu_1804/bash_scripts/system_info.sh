#!/usr/bin/env bash
# 显示一些相关的系统信息

# 显示 Path 环境变量，一个目录一行
echo -e "\033[33m#---------------------------------\033[0m"
echo -e "\033[33m#Path 环境变量:\033[0m"
echo $PATH | tr : \\n
echo -e "\n"


# 查看 Linux 系统版本
echo -e "\033[33m#---------------------------------\033[0m"
echo -e "\033[33m#Linux 系统版本:\033[0m"
lsb_release -a # 适用于所有Linux系统
cat /etc/os-release #推荐
uname -a # 查看Linux内核
cat /proc/version # 查看Linux内核
echo -e "\n"

exit 0
