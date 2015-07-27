# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
    # Vagrant plugins config
    config.omnibus.chef_version = :latest
    config.berkshelf.enabled = true

    # Box
    config.vm.box = "ubuntu/trusty64"
    config.vm.box_url = "https://atlas.hashicorp.com/ubuntu/trusty64"


    # Networking
    config.vm.network :private_network, ip: "10.10.10.60"

    # Synced folders
    #config.vm.synced_folder "./webroot", "/var/www", type: "nfs"

    # Provision via chef solo
    config.vm.provision :chef_solo do |chef|

        chef.add_recipe "apt"
        chef.add_recipe "mongodb::default"
        #chef.add_recipe "mongodb::user_management"
        chef.add_recipe "redisio"
        chef.add_recipe "redisio::enable"
        chef.add_recipe "base::mysql"   

        chef.json = {}
    end
end