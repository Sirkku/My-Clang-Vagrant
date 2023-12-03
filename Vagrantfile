# -*- mode: ruby -*-
# vi: set ft=ruby :

# https://docs.vagrantup.com
Vagrant.configure("2") do |config|
  config.vm.box = "ubuntu/xenial64" # https://cloud-images.ubuntu.com

  config.vm.synced_folder "..", "/code"

  config.vm.provision "shell", path: "install.sh"
end