#!/bin/bash
echo "Running general file configs"

#perms
chmod 644 /etc/passwd
chmod 644 /etc/group
chmod 0000 /etc/shadow
chmod 644 /etc/sysctl.conf
chmod 644 /etc/shells
chmod 755 /bin/bash
#General File Configs

#/etc/login.defs
sed -i '/PASS_MAX_DAYS/c\PASS_MAX_DAYS 90' /etc/login.defs
sed -i '/PASS_MIN_DAYS/c\PASS_MIN_DAYS 7' /etc/login.defs
sed -i '/PASS_WARN_AGE/c\PASS_WARN_AGE 14' /etc/login.defs
sed -i '/ENCRYPT_METHOD/c\ENCRYPT_METHOD SHA512' /etc/login.defs
sed -i '/UMASK/c\UMASK 077' /etc/login.defs

#/etc/shells
echo "/etc/shell configurations..."
echo "/bin/sh" >> goodShell
echo "/bin/bash" >> goodShell
echo "/bin/rbash" >> goodShell
echo "/bin/dash" >> goodShell
cp -f goodShell /etc/shells

#/etc/default/ufw
sed -i '/IPV6/c\IPV6=no'

#/etc/hosts
echo "nospoof on" >> /etc/host.conf

#ufw
ufw enable
sed -i '/IPV6/c\IPV6=no' /etc/default/ufw

#/etc/modprobe.d
cat /etc/modprobe.d/modprobe.conf
echo "install appletalkk /bin/true" >> modConfig
echo "install bluetooth /bin/true" >> modConfig
echo "install cramfs /bin/true" >> modConfig
echo "install squashfs /bin/true" >> modConfig
echo "install fat /bin/true" >> modConfig
echo "install gfs2 /bin/true" >> modConfig
echo "install freevxfs /bin/true" >> modConfig

echo "blacklist uas" >> /etc/modprobe.d/blacklist.conf
echo "blacklist usb_storage" >> /etc/modprobe.d/blacklist.conf

echo "install bluetooth /bin/true" >> /etc/modprobe.d/bluetooth.conf

echo "options ipv6 disable=1" >> /etc/modprobe.d/ipv6.conf

cp -f modConfig /etc/modprobe.d/modprobe.conf

#Updates
#echo "Configuring Updates..."
#echo "APT::Get::AllowUnauthenticated "false"" >> /etc/apt/apt.conf.d/50unattended-upgrades
#echo "APT::Periodic::Update-Package-Lists "1";" >> /etc/apt/apt.conf.d/50unattended-upgrades
#echo "APT::Periodic::Unattended-Upgrade "1";" >> /etc/apt/apt.conf.d/50unattended-upgrades
