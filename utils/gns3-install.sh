#!/usr/bin/env bash
set -e +h
sudo dnf -y install git gcc cmake flex bison
sudo dnf -y install elfutils-libelf-devel libuuid-devel libpcap-devel
sudo dnf -y install python3-tornado python3-netifaces python3-devel python-pip python3-setuptools python3-PyQt4 python3-zmq
sudo dnf -y install wireshark
sudo dnf -y install gns3-server gns3-gui

git clone https://github.com/GNS3/dynamips
cd dynamips ## should change CDs
mkdir build
cd build
cmake ..
sudo make install
[[ "$(which dynamips)" == "/usr/local/bin/dynamips" ]]
cd ../../

wget https://liquidtelecom.dl.sourceforge.net/project/vpcs/0.8/vpcs_0.8b_Linux64
mv vpcs_0.8b_Linux64 vpcs
chmod +x vpcs
sudo cp vpcs /usr/local/bin/
vpcs -v

. kvm.sh

git clone http://github.com/ndevilla/iniparser.git
cd iniparser
make
sudo cp libiniparser.* /usr/lib/
sudo cp src/iniparser.h /usr/local/include
sudo cp src/dictionary.h /usr/local/include
cd ..

. docker.sh

echo 'Read doc: https://computingforgeeks.com/how-to-install-gns3-on-fedora-linux/'
