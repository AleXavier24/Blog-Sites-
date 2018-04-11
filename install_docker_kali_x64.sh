#!/bin/bash


if fuser /var/lib/dpkg/lock > /dev/nul 2>&1 
then 
        echo "Software management (APT) is already running. Cannot install docker right now."
        echo "Just wait a minute or two and try again"
        exit
fi


sudo apt-get update

# apt-get dependencies
sudo apt-get install \
     apt-transport-https \
     ca-certificates \
     curl \
     gnupg2 \
     software-properties-common

# Add gpg key for docker
curl -fsSL https://download.docker.com/linux/debian/gpg | sudo apt-key add -

echo Adding to sources.list
echo "deb [arch=amd64] https://download.docker.com/linux/debian stretch stable" | sudo tee --append /etc/apt/sources.list > /dev/null

sudo apt-get update
sudo apt-get install docker-ce

# Start Docker on boot
sudo systemctl enable docker