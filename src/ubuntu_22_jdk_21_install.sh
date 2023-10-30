#!/bin/bash

sudo apt install -y wget

wget https://download.java.net/java/GA/jdk21.0.1/415e3f918a1f4062a0074a2794853d0d/12/GPL/openjdk-21.0.1_linux-x64_bin.tar.gz

tar -xvf openjdk-21.0.1_linux-x64_bin.tar.gz

cd jdk-21.0.1

sudo mkdir -p /usr/local/jdk-21
sudo mv * /usr/local/jdk-21

echo 'export JAVA_HOME=/usr/local/jdk-21' >> ~/.bashrc
echo 'export PATH=$JAVA_HOME/bin:$PATH' >> ~/.bashrc