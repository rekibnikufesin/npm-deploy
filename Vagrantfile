# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure(2) do |config|
    config.vm.box = "ARTACK/debian-jessie"
    config.vm.network "forwarded_port", guest: 3000, host: 3000
    config.vm.network "forwarded_port", guest: 5858, host: 5858
    config.vm.provision :shell, path: "scripts/vagrant_init.sh", privileged: true

end