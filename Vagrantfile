# -*- mode: ruby -*-
# vi: set ft=ruby  :

machines = {
  "desafiomax1" => {"memory" => "1024", "cpu" => "2", "ip" => "10", "image" => "centos/7"},
  "desafiomax2" => {"memory" => "2048", "cpu" => "2", "ip" => "20", "image" => "centos/7"},
}

Vagrant.configure("2") do |config|

  config.vm.box_check_update = false
  config.vm.boot_timeout = 600
  machines.each do |name, conf|
    config.vm.define "#{name}" do |machine|
      machine.vm.box = "#{conf["image"]}"
      machine.vm.hostname = "#{name}.4labs.example"
      machine.vm.network "private_network", ip: "10.5.25.#{conf["ip"]}"
      machine.vm.provider "virtualbox" do |vb|
        vb.name = "#{name}"
        vb.memory = conf["memory"]
        vb.cpus = conf["cpu"]
        vb.customize ["modifyvm", :id, "--groups", "/525-InfraAgil"]
			end
		end
	end
end
