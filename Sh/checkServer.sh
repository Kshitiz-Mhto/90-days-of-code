#!/usr/bin/sh

server_ip=$1

if [ -z "$server_ip" ]
then
    echo "Enter the server ip address"
    read server_ip
fi

install (){
    sudo apt-get install figlet
    figlet -f big "Initializing"
}

func (){
    
    sleep 2
    if [[ -z {ping $server_ip -w 3 -W 3} ]];
    then
        figlet -f big "Connection Failed"
    else
        figlet -f big "Connection Successfully Established"
    fi
}

install
func
