#! /bin/bash
printf "Installing RDP Be Patience..." >&2
{
sudo useradd -m NAHID
sudo adduser NAHID sudo
echo 'NAHID:1234' | sudo chpasswd
sed -i 's/\/bin\/sh/\/bin\/bash/g' /etc/passwd
sudo apt update
sudo apt -y install screen
sudo apt -y install xfce4
sudo apt -y install firefox
sudo apt install tightvncserver
tightvncserver :1
wget https://bin.equinox.io/c/4VmDzA7iaHb/ngrok-stable-linux-amd64.zip
unzip ngrok-stable-linux-amd64.zip
} /dev/null 2>&1

printf "\nSetup Completed " >&2 ||
printf "\nError Occured " >&2
printf '\nCheck https://remotedesktop.google.com/headless  Copy Command Of Debian Linux And Paste Down\n'
read -p "Paste Here: " CRP
su - NAHID -c """$CRP"""
printf 'Check https://remotedesktop.google.com/access/ \n'
printf 'Your SUDO Pasword is: 1234 \n'
