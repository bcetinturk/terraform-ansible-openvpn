# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|

  config.vm.define "openvpn-server" do |vm_config|
    vm_config.vm.box = "generic/ubuntu2004"
    vm_config.vm.network "private_network", ip: "192.168.33.10"
    vm_config.vm.hostname = "openvpn-server"

    vm_config.vm.provider "virtualbox" do |vb|
      # Customize the amount of memory on the VM:
      vb.memory = "2048"
      vb.name = "openvpn-server"
    end

    vm_config.vm.provision "ansible" do |ansible|
      ansible.playbook = "openvpn.yml"
      ansible.extra_vars = {
        target_type: "vagrant",
        machine_ip: "192.168.33.10"
      }
    end

  end

end
