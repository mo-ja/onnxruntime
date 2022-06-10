#!/bin/bash
set -ex

os_major_version=$(cat /etc/os-release | tr -dc '0-9.'|cut -d \. -f1)

apt-get update -y && apt-get upgrade -y
apt-get install -y software-properties-common

echo "installing for os major version : $os_major_version"
apt-get install -y gcc gdb  build-essential tar unzip  make cmake aria2  bzip2

# Install Java
# Install automatic documentation generation dependencies
#https://linuxize.com/post/install-java-on-debian-9/

apt-get install -y openjdk-11-jdk graphviz
