# -*- mode: ruby -*-
# vi: set ft=ruby :



Vagrant.configure("2") do |config|

# Configurando a VM
  config.vm.define:desafio do |desafio_config|
    desafio_config.vm.box = "debian/buster64"
    desafio_config.vm.network :private_network, ip: "192.168.50.10"
    desafio_config.vm.provider:virtualbox do |v|
      v.memory = 2048
      v.cpus = 1
      
    end
    config.vm.provision "shell", inline: <<-SHELL
    wget https://repo.zabbix.com/zabbix/5.0/debian/pool/main/z/zabbix-release/zabbix-release_5.0-1+buster_all.deb
    sudo dpkg -i zabbix-release_5.0-1+buster_all.deb
    sudo apt-get update;
    sudo apt install apache2 php php-mysql php-mysqlnd php-ldap php-bcmath php-mbstring php-gd php-pdo php-xml libapache2-mod-php -y;
    sudo apt install zabbix-server-mysql zabbix-frontend-php zabbix-apache-conf zabbix-agent -y;
    sudo apt install mariadb-server mariadb-client -y
    sudo systemctl start mariadb 
    sudo bash -c "echo 'date.timezone = America/Maceio' >> /etc/php/7.3/apache2/php.ini"
    sudo mysql -e "CREATE USER 'zabbix'@'localhost' IDENTIFIED BY 'zabbix';";
    sudo mysql -e "create database zabbix character set utf8 collate utf8_bin;"
    sudo mysql -e "grant all privileges on zabbix.* to zabbix@localhost identified by 'zabbix';";
    sudo zcat /usr/share/doc/zabbix-server-mysql/create.sql.gz | mysql -uzabbix -p"zabbix" zabbix;
    sudo sed 's/# DBPassword=/DBPassword=zabbix/g' /etc/zabbix/zabbix_server.conf -i;
    cp /vagrant/zabbix.conf.php /etc/zabbix/web/
    sudo systemctl restart zabbix-server;
    cp /vagrant/index.html /var/www/html/index.html
    sudo systemctl restart apache2; 
    SHELL
  end
end