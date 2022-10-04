#!/bin/bash

function findandremove {
    echo "============================ find and remove $1"
    if dpkg --get-selections | cut -f1 | grep $1 ; then
        echo "============================ --- $1 found"
        dpkg --purge --force-all $1
        echo "============================ +++ $1 removed"
    fi
}

function main {
    #intro
    echo "running sophiescript main"

read -p "Press enter key to continue"
awk -F: '($3 >= 1000) {printf "%s:%s\n",$1,$3}' /etc/passwd
read -p "Press enter key to continue"
unalias -a
#manual config edits
    chmod +w /etc/crontab
    vi /etc/crontab
    vi /etc/apt/sources.list
    vi /etc/resolv.conf
    vi /etc/hosts
    vi /etc/rc.local
    vi /etc/bash.bashrc
    vi /etc/sysctl.conf
read -p "remember to remove !authenticate"
    vi /etc/sudoers
    vi /usr/share/lightdm/lightdm.conf.d/50-unity-greeter.conf
    vi /etc/ssh/sshd_config
    vi /etc/group
    vi /etc/shells
    vi /etc/issue
    vi /etc/securetty
    vi /etc/su
    vi /sbin/ifconfig
read -p "this is /var/mail"
cd /var/mail
ls -la
read -p "this is /var/spool/cron/crontabs"   
cd /var/spool/cron/crontabs
ls -la
read -p "this is cron.d press enter"
cd /etc/cron.d
ls -la
read -p "this is cron.daily press enter"
cd /etc/cron.daily
ls -la
read -p "this is cron.weekly"
cd /etc/cron.weekly
ls -la
read -p "this is cron.monthly"
cd /etc/cron.monthly
ls -la
echo "----------------------------------"
echo "-------- find fake root ----------"
echo "----------------------------------"
cat /etc/passwd | grep 0:0
echo "----------------------------------"
echo "/etc/passwd will be opened for edit"
read -p "Set all of the names for users like samba and lightdm to /bin/false"
read -p "Press enter key to continue"

    vi /etc/passwd

read -p "here are all the ports being allowed through ufw"
read -p "port 1337 is not a normal port"
ufw status numbered

read -p "here are all of the listening proccesses"
read -p "127. is ok but 0.0.0 is sus"
netstat -plantu | grep LISTEN

chmod 644 /etc/passwd
chmod 640 /etc/shadow
chmod 644 /etc/group
chmod 4755 /bin/su
chmod 444 /boot/grub/grub.cfg
chmod 644 /etc/shells
chmod 644 /etc/smb.conf
chmod 4700 /bin/su
chmod 644 /etc/securetty
chmod 755 /sbin/ifconfig

chown root /etc/passwd
chmod root /etc/shadow
chown root /etc/group
chown root /bin/su
chown root /boot/grub/grub.cfg
chown root /etc/shells
chown root /etc/smb.conf
chown root /bin/su
chown root /etc/securetty
chown root /sbin/ifconfig
chown root /etc/anacrontab

    #find and remove
    read -p "Press enter key to remove"
    findandremove aircrack-ng
    findandremove wifite
    findandremove hydra
    findandremove jack
    findandremove telnet
    findandremove nikto
    findandremove dsniff
    findandremove rsh-server
    findandremove transmission
    findandremove moon-buggy
    findandremove yersinia
    findandremove finger
    findandremove dos2unix
    findandremove finger
    findandremove nginx
    findandremove nginx-common
    findandremove nginx-core
    findandremove netcat-openbsd
    findandremove netcat
    findandremove deluge
    findandremove sl
    findandremove ophcrack
    findandremove sqlmap
    findandremove nsnake
    findandremove hping3
    findandremove pyrit
    findandremove sendmail
    findandremove dos2unix
    findandremove medusa
    findandremove tor
    findandremove john
    findandremove darkstat
    findandremove masscan
    findandremove john-data
    findandremove vsftpd
    findandremove minetest
    findandremove cain
    findandremove abel
    findandremove hping
    findandremove wireshark
    findandremove httpry
    findandremove acunetix
    findandremove inssider
    findandremove nmap
    findandremove binwalk
    findandremove nessus
    findandremove maltego
    findandremove metasploit
    findandremove snort
    findandremove backtrack
    findandremove kismet
    findandremove kismac
    findandremove netcop
    findandremove nmap
    findandremove superscan
    findandremove gdebi
    findandremove ipscan_3.3.2_amd.64.deb
    findandremove ipscan
    findandremove truecrypt
    findandremove putty
    findandremove openvpn
    findandremove stunnel
    findandremove keepass
    findandremove rainbowcrack
    findandremove wfuzz
    findandremove brutus
    findandremove l0phtcrack
    findandremove fgdump
    findandremove thc-hydra
    findandremove scapy
    findandremove nemesis
    findandremove socat
    findandremove splunk
    findandremove nagios
    findandremove p0f
    findandremove ngrep
    findandremove ettercap
    findandremove etherape
    findandremove sqlmap
    findandremove sqlninja
    findandremove social-engineer-toolkit
    findandremove netsparker
    findandremove beef
    findandremove dradis
    findandremove openvas
    findandremove nipper
    findandremove secunia
    findandremove retina
    findandremove cryptcat
    findandremove qualys
    findandremove qualysguard
    findandremove nexpose
    findandremove openjdk
    findandremove openjdk-8-jre-headless
    findandremove webscarab
    findandremove webscrutiy
    findandremove pof
    findandremove w3af
    findandremove paros
    findandremove fiddler
    findandremove ratproxy
    findandremove sslstrip
    findandremove skipfish
    findandremove wapati
    findandremove sleuthkit
    findandremove helix
    findandremove maltego
    findandremove malteg0
    findandremove encase
    findandremove immdbg
    findandremove trace
    findandremove traceroute
    findandremove ping
    findandremove ping.eu
    findandremove dig
    findandremove ethereal
    findandremove tcpdump
    findandremove tcptrace
    findandremove hping
    findandremove dnsniff
    findandremove gfi
    findandremove gfi-landguard
    findandremove gfilandguard
    findandremove landguard
    findandremove pf
    findandremove fport
    findandremove openpgp
    findandremove libaa-bin
    findandremove systool
    findandremove apache2
    findandremove gdb
    
    install usb-storage /bin/true in /etc/modprobe/usb-storage.conf
    
    #network security
    read -p "Press enter key to apply network security"
    iptables -A INPUT -p tcp -s 0/0 -d 0/0 --dport 23 -j DROP
    iptables -A INPUT -p tcp -s 0/0 -d 0/0 --dport 2049 -j DROP
    iptables -A INPUT -p udp -s 0/0 -d 0/0 --dport 2049 -j DROP
    iptables -A INPUT -p tcp -s 0/0 -d 0/0 --dport 6000:6009 -j DROP
    iptables -A INPUT -p tcp -s 0/0 -d 0/0 --dport 7100 -j DROP
    iptables -A INPUT -p tcp -s 0/0 -d 0/0 --dport 515 -j DROP
    iptables -A INPUT -p udp -s 0/0 -d 0/0 --dport 515 -j DROP
    iptables -A INPUT -p tcp -s 0/0 -d 0/0 --dport 111 -j DROP
    iptables -A INPUT -p udp -s 0/0 -d 0/0 --dport 111 -j DROP
    iptables -A INPUT -p all -s localhost  -i eth0 -j DROP
    ufw enable
    ufw deny 23
    ufw deny 2049
    ufw deny 515
    ufw deny 111
    
}

if [ "$(id -u)" != "0" ]; then
    echo "sophiescript.sh is not being run as root"
    echo "run as 'sudo sh sophiescript.sh 2>&1 | tee output.log' to output the console output to a log file."
    exit
else
    main
fi
