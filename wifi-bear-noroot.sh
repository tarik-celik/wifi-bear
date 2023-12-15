clear
ip=$(curl -s ifconfig.me)                            
ip2=${ip::-6}
echo "your ip is ${ip}"
echo "Are you sure to flood the network [y/n]"
read response
if [[ $response == "y" ]]
then
        ping -i 0 -c 999999 -s 65027 -W 999 $ip2
else
        echo "Cancelling..."
fi
