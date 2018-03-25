#!/usr/bin/env bash

export DEBIAN_FRONTEND=noninteractive

if [ -f /etc/apt/sources.list.d/minergate.list ];
then
    mv /etc/apt/sources.list.d/minergate.list /tmp/minergate.list
    apt-get update
    apt-get install -y apt-transport-https ca-certificates
    mv /tmp/minergate.list /etc/apt/sources.list.d/minergate.list
fi

apt-get update
apt-get install -y cmake build-essential libboost-all-dev git
git clone https://github.com/feeleep75/nheqminer.git
cd nheqminer/nheqminer
mkdir build 
cd build 
cmake .. 
make

cd $HOME
mv nheqminer/ nheqminer_tmp
cp nheqminer_tmp/nheqminer/build/nheqminer .
rm -rf nheqminer_tmp