#!/bin/bash

sudo apt update && sudo apt upgrade -y

sudo apt install -y unzip

wget https://releases.hashicorp.com/consul/1.17.0/consul_1.17.0_linux_arm64.zip

wget https://releases.hashicorp.com/nomad/1.6.3/nomad_1.6.3_linux_arm64.zip

unzip consul_1.17.0_linux_arm64.zip

unzip nomad_1.6.3_linux_arm64.zip

mv consul nomad /usr/local/bin

consul version

nomad version