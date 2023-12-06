#!/usr/bin/env bash

apt-get install --yes wget

# https://apt.llvm.org
wget -O - https://apt.llvm.org/llvm-snapshot.gpg.key | sudo apt-key add -
# Fingerprint: 6084 F3CF 814B 57C1 CF12 EFD5 15CF 4D18 AF4F 7421

apt-add-repository "deb http://apt.llvm.org/xenial/ llvm-toolchain-xenial main"
apt-get update --yes

apt-get install --yes clang clang-13 lldb-13 lld-13 gdb make

mkdir /opt/cmake
cd /opt/cmake
wget https://cmake.org/files/v3.26/cmake-3.26.0-linux-x86_64.sh
echo "y\n" | bash cmake-3.26.0-linux-x86_64.sh
sudo ln -sf /opt/cmake/cmake-3.26.0-linux-x86_64/bin/* /usr/local/bin