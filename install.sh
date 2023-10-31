#!/bin/bash

sudo apt update && sudo apt upgrade -y

sudo apt-get update && sudo apt-get upgrade -y

cd "$(dirname "$0")/src"

# Add execute permission to all files under src folder
for file in *; do
    if [ -f "$file" ]; then
        chmod +x "$file"
    else
        echo "The $file is not a file"
    fi
done

# Install Docker
sudo ./ubuntu_22_docker_install.sh
# Install Jenkins w/JRE 17
sudo ./ubuntu_22_jenkins_install.sh
# Install JDK 21
sudo ./ubuntu_22_jdk_21_install.sh
# Install NGINX Proxy Manager
sudo ./ubuntu_22_nginx-pm_install.sh

echo "--------------------------------"
echo "JAVA_HOME: $JAVA_HOME"
echo "Jenkins Init Password: " && sudo cat /var/lib/jenkins/secrets/initialAdminPassword
echo "--------------------------------"
echo "The server will restart in 10 seconds..."

sleep 10 && reboot
