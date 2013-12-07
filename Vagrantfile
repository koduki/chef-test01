# -*- mode: ruby -*-
# vi: set ft=ruby :

# Vagrantfile API/syntax version. Don't touch unless you know what you're doing!
VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  # All Vagrant configuration is done here. The most common configuration
  # options are documented and commented below. For a complete reference,
  # please see the online documentation at vagrantup.com.

  # Every Vagrant virtual environment requires a box to build off of.
  config.vm.box = "centos"

  config.vm.define :web1 do |server|
    server.vm.network :private_network, ip: "192.168.1.10"
  end

  config.vm.define :collect1 do |server|
    server.vm.network :private_network, ip: "192.168.1.11"
  end

  config.omnibus.chef_version = :latest
end
