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
    pi=$(ping $server_ip -w 3 -W 3)
    data= grep $pi | "0% packet loss,"
    sleep 3
    if [[ -z "$data" ]]
    then
        figlet -f big "Connection Failed"
    else
        figlet -f big "Connection Successfully Established"
    fi
}

install
func
