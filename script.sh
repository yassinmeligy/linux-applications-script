#! /bin/bash
#check installed app 
declare -a my_array
declare -i x 
x=0
check(){
if [ $? -eq 0 ]; then
    echo $1 is installed
else
    echo $1 failed to install
    my_array[$x]
    let "x++"
fi

}

#put ur commands here
sudo apt update
sudo apt install apt-transport-https 
wget https://swupdate.openvpn.net/repos/openvpn-repo-pkg-key.pub
sudo apt-key add openvpn-repo-pkg-key.pub
sudo wget -O /etc/apt/sources.list.d/openvpn3.list https://swupdate.openvpn.net/community/openvpn3/repos/openvpn3-buster.list 
sudo apt update
sudo apt install openvpn3 
check openvpn3
sudo apt install kazam
check kazam
sudo apt install virtualbox
check virtualbox
sudo apt install gedit 
check gedit
sudo snap install spotify
check spotify
sudo snap install pycharm-community --classic
check pycharm
sudo snap install discord
check discord
sudo apt install gdebi
check gedpizoompackage
sudo apt install zoom
check zoom
sudo snap install musixmatch
check musixmatch 
wget "https://go.microsoft.com/fwlink/p/?LinkID=2112886&amp;culture=en-us&amp;country=WW"
sudo dpkg --install teams_1.3.00.30857_amd64.deb
check teams
#print uninstalled apps
printf '%s\n' "${my_array[@]}"
