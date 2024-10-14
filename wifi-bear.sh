#!/usr/bin/bash
clear
ip=$(curl -s icanhazip.com)                            
echo "your ip is ${ip}"
echo "Are you sure to flood the network [y/n]"
read response
if [[ $response == "y" ]]
then
        ping -i 0 -c 999999 -s 65027 -W 999 $ip
else
        echo "Cancelling..."
fi
