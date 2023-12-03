#!/usr/bin/env bash

sudo apt-get install --yes wget

# https://apt.llvm.org
wget -O - https://apt.llvm.org/llvm-snapshot.gpg.key | sudo apt-key add -
# Fingerprint: 6084 F3CF 814B 57C1 CF12 EFD5 15CF 4D18 AF4F 7421

sudo apt-add-repository "deb http://apt.llvm.org/xenial/ llvm-toolchain-xenial main"
sudo apt-get update --yes

# https://apt.llvm.org
# Install (development branch)
#
# Clang: clang clang-13 lldb-13 lld-13
# CMake: cmake
sudo apt-get install --yes clang clang-13 lldb-13 lld-13 cmake