Vagrant.configure("2") do |config|

# Configurando a VM
  config.vm.define:desafio do |desafio_config|
    desafio_config.vm.box = "debian/buster64"
    desafio_config.vm.network :private_network, ip: "192.168.50.10"
    desafio_config.vm.provider:virtualbox do |v|
      v.memory = 2048
      v.cpus = 1
      
    end
  end
  config.vm.provision :shell, path: "setup.sh"
end