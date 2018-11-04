# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|

  #Box Settings
  config.vm.box = "ubuntu/trusty64"

  #Provider Settings
  config.vm.provider "virtualbox" do |vb|
    vb.memory = 2048
    vb.cpus = 2
  end

  # Network Settings
  #config.vm.network :forwarded_port, guest: 80, host: 4567
  config.vm.network "private_network", ip: "192.168.33.10"

  #Provision
  config.vm.provision :shell, path: "bootstrap.sh"

  # Folder Settings
  config.vm.synced_folder ".", "/var/www/html"

end
