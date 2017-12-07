#!/bin/bash
set -e
#
##################################################################################################################
#
#   DO NOT JUST RUN THIS. EXAMINE AND JUDGE. AT YOUR OWN RISK.
#
##################################################################################################################


# latest kernel check the following url
# http://kernel.ubuntu.com/~kernel-ppa/mainline/


kernel1=http://kernel.ubuntu.com/~kernel-ppa/mainline/v4.13-rc1/linux-headers-4.13.0-041300rc1_4.13.0-041300rc1.201707151931_all.deb
kernel2=http://kernel.ubuntu.com/~kernel-ppa/mainline/v4.13-rc1/linux-headers-4.13.0-041300rc1-generic_4.13.0-041300rc1.201707151931_amd64.deb
kernel3=http://kernel.ubuntu.com/~kernel-ppa/mainline/v4.13-rc1/linux-image-4.13.0-041300rc1-generic_4.13.0-041300rc1.201707151931_amd64.deb

# cleaning tmp
[ -d /tmp/kernelupdate ] && rm -rf /tmp/kernelupdate

mkdir /tmp/kernelupdate

wget $kernel1 -P /tmp/kernelupdate/
wget $kernel2 -P /tmp/kernelupdate/
wget $kernel3 -P /tmp/kernelupdate/

cd /tmp/kernelupdate
sudo dpkg -i linux*

rm -rf /tmp/kernelupdate


echo "################################################################"
echo "###############      Kernel is installed            ############"
echo "###############     Files have been deleted         ############"
echo "##########    Reboot and keep your fingers crossed  ############"
echo "################################################################"







