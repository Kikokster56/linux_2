#!/bin/bash

host=$(hostname)
Kerv=$(cat /etc/issue)
FQDN=$(hostname -d)
IP=$(ifconfig -v eth0 | grep inet | grep -v inet6)
Mac=$(ifconfig -v eth0 |grep ether)
nthr=$(ps -v | grep Mem) #For the number of threads
Mem=$(free -g | grep Mem)
#OPTIND=1



echo ""
echo "Welcome, Please choose a number :)"
echo ""
echo "@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@"
echo ""
echo " [1] - Host"
echo ""
echo " [2] - Kernel Version"
echo ""
echo " [3] - IP"
echo ""
echo " [4] - MAC address"
echo ""
echo " [5] - Number of threads"
echo ""
echo " [6] - RAM"
echo ""
echo " [7] - User"
echo ""
echo " [0] - !!! FINISH !!!"
echo ""
echo "@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@"
echo ""


while :
do
        read num

        if [[ $num = 0 ]] ; then
                echo "Finish!!!"
                break
        else

                case $num in
                        1)
                                echo "Your name of the host is: $host" ;;
                        2)
                                echo "Your Kernel Version is: $Kerv" ;;
                        3)
                                echo "Your IP address is: $IP" ;;
                        4)
                                echo "Your MAC address is: $Mac" ;;
                        5)
                                echo "The number of threads is: $nthr" ;;
                        6)
                                echo "The RAM (in GB) is: $Mem" ;;
                        7)
                                echo "Your user is: $(whoami)" ;;
                        *)
                                echo "You didn't insert a number from the interface. Please insert a number from 0 to 7!"
                esac
        fi

done
