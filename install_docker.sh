#!/bin/bash

function installDocker(){


    echo "Installing Docker"

    sudo apt-get update

    sudo apt-get install \
            apt-transport-https \
            ca-certificates \
            curl \
            software-properties-common -y

    curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -

    sudo add-apt-repository \
         "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
         $(lsb_release -cs) \
         stable"

    sudo apt-get update

    sudo apt-get install docker-ce -y
    
    curl -L "https://github.com/docker/compose/releases/download/1.27.4/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
        

    chmod +x /usr/local/bin/docker-compose
    sleep 5
    echo "Docker Installed successfully"
}

function init(){

    if [ -z "$(which docker)" ]; then
        installDocker
    fi
}


function main(){

    init
    
}

main

