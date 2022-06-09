#!/bin/bash
set -ex

os_major_version=$(cat /etc/lsb-release | tr -dc '0-9.'|cut -d \. -f1)

apt-get update -y

echo "installing for os major version : $os_major_version"
apt-get install -y gdb  build-essential tar unzip  make  aria2  bzip2

# Install Java
# Install automatic documentation generation dependencies
apt-get install -y openjdk-11-jdk graphviz
