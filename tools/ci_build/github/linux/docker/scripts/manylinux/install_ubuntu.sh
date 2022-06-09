#!/bin/bash
set -e

os_major_version=$(cat /etc/lsb-release | tr -dc '0-9.'|cut -d \. -f1)

apt-get update -y

echo "installing for os major version : $os_major_version"
apt-get install -y gdb expat-devel build-essential tar unzip zlib-devel make libunwind  aria2  bzip2 bzip2-devel

# Install Java
# Install automatic documentation generation dependencies
apt-get install -y java-11-openjdk-devel graphviz
