#!/bin/bash

#check if ip and port are provided
if [ $# -ne 2 ]; then
	echo "Usage: $0 <ip_address> <port>"
	exit 1
fi

#Ip address and port
ip_address=$1
port=$2

#Prompt for user message 
echo -n "Enter message to send "
read message

#Send message using netcat
echo "$message" | nc -w 5 "$ip_address" "$port"

echo "Message sent successfully to $ip_address:$port"
