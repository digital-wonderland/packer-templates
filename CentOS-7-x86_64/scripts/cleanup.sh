yum -y erase gtk2 libX11 hicolor-icon-theme avahi freetype bitstream-vera-fonts
yum -y clean all
#rm -rf /etc/yum.repos.d/{puppetlabs,epel}.repo
rm -rf VBoxGuestAdditions_*.iso

# Fix network configuration
sed -i /HWADDR/d /etc/sysconfig/network-scripts/ifcfg-enp0s3
sed -i /UUID/d /etc/sysconfig/network-scripts/ifcfg-enp0s3
sed -ie "s/enp0s3/eth0/g" /etc/sysconfig/network-scripts/ifcfg-enp0s3
mv /etc/sysconfig/network-scripts/ifcfg-enp0s3 /etc/sysconfig/network-scripts/ifcfg-eth0
rm /etc/sysconfig/network-scripts/ifcfg-enp0s3e
#rm /etc/udev/rules.d/70-persistent-net.rules

# remove firmware
#rpm -e `rpm -qa | grep firmware`
