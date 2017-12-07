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


kernel1=http://kernel.ubuntu.com/~kernel-ppa/mainline/v4.9.38/linux-headers-4.9.38-040938_4.9.38-040938.201707150734_all.deb
kernel2=http://kernel.ubuntu.com/~kernel-ppa/mainline/v4.9.38/linux-headers-4.9.38-040938-generic_4.9.38-040938.201707150734_amd64.deb
kernel3=http://kernel.ubuntu.com/~kernel-ppa/mainline/v4.9.38/linux-image-4.9.38-040938-generic_4.9.38-040938.201707150734_amd64.deb

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







