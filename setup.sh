#! /bin/bash
printf "Installing RDP Be Patience..." >&2
{
sudo useradd -m NAHID
sudo adduser NAHID sudo
echo 'NAHID:1234' | sudo chpasswd
sed -i 's/\/bin\/sh/\/bin\/bash/g' /etc/passwd

sudo apt-get update
sudo apt-get install xfce4 xfce4-terminal
wget https://dl.google.com/linux/direct/chrome-remote-desktop_current_amd64.deb
sudo dpkg -i chrome*
sudo apt-get install -f
} /dev/null 2>&1

printf "\nSetup Completed " >&2 ||
printf "\nError Occured " >&2
printf '\nCheck https://remotedesktop.google.com/headless  Copy Command Of Debian Linux And Paste Down\n'
read -p "Paste Here: " CRP
su - NAHID -c """$CRP"""
printf 'Check https://remotedesktop.google.com/access/ \n'
printf 'Your SUDO Pasword is: 1234 \n'
