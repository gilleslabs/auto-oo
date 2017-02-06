# -*- mode: ruby -*-
# vi: set ft=ruby :

################################################################################################################
#                                                                                                              #
# Vagrantfile for provisioning ready-to-go Docker VM.                                                          #
#                                                                                                              #
# Author: Gilles Tosi                                                                                          #
#                                                                                                              #
# The up-to-date version and associated dependencies/project documentation is available at:                    #
#                                                                                                              #
# https://github.com/gilleslabs/learn-advanced-docker                                                          #
#                                                                                                              #
################################################################################################################


Vagrant.configure(2) do |config|

	config.vm.define "docker" do |docker|

#### Not using ubuntu/trusty64 image as it doesn't have LVM enabled

	docker.vm.box = "addgene/trusty64"
			config.vm.provider "virtualbox" do |v|
				v.cpus = 2
				v.memory = 2048
			end
        docker.vm.hostname ="ooce"
		docker.vm.network "private_network", ip: "192.168.99.101"
		docker.vm.provision :shell, path: "install-docker.sh"
		docker.vm.provision :shell, path: "install-oo.sh"
    end
end