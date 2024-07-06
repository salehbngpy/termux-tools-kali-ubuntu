#!bin/bash
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
echo -e "\e[33m[0] : exit "
echo -e "\e[34m-----------------------------"
echo -n -e "\e[91mEnter something >>> : "
read name
if [ "$name" == "1" ]
then
	echo -e "\e[31m installing ubuntu . . ."
	pkg install proot-distro
	proot-distro install ubuntu
	echo -e "\e[32m Run the script again to install other contents or run\e[0m"
elif [ "$name" == "2" ]
then
	echo -e "\e[32m installing debian . . . "
	pkg install proot-distro
	proot-distro install debian
	echo -e "\e[32m Run the script again to install other contents or run\e[0m"
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
	./install-nethunter-termux
	echo -e "\e[32m] installtion completed !"
	echo -e "\e[32m Run the script again to install other contents or run\e[0m"
elif [ "$name" == "4" ]
then
	proot-distro login ubuntu
	echo -e "\e[37m"
elif [ "$name" == "5" ]
then 
	proot-distro login debian
elif [ "$name" == "6" ]
then
	nethunter
elif [ "$name" == "0" ]
then
	printf "Thanks for using (:"
fi

