    wget https://repo.zabbix.com/zabbix/5.0/debian/pool/main/z/zabbix-release/zabbix-release_5.0-1+buster_all.deb
    sudo dpkg -i zabbix-release_5.0-1+buster_all.deb
    sudo apt-get update;
    sudo apt install zabbix-server-mysql zabbix-frontend-php zabbix-apache-conf zabbix-agent apache2 php php-mysql php-mysqlnd php-ldap php-bcmath php-mbstring php-gd php-pdo php-xml libapache2-mod-php mariadb-server mariadb-client python3-pip python3 apt-transport-https ca-certificates software-properties-common unzip gnupg2 curl git -y;
    echo "deb http://ppa.launchpad.net/ansible/ansible/ubuntu bionic main" | sudo tee /etc/apt/sources.list.d/ansible.list
    sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 93C4A3FD7BB9C367
    sudo apt update;
    sudo apt install ansible -y;
    pip3 install py-zabbix zabbix-api;
    sudo systemctl start mariadb 
    sudo bash -c "echo 'date.timezone = America/Maceio' >> /etc/php/7.3/apache2/php.ini"
    sudo mysql -e "CREATE USER 'zabbix'@'localhost' IDENTIFIED BY 'zabbix';";
    sudo mysql -e "create database zabbix character set utf8 collate utf8_bin;"
    sudo mysql -e "grant all privileges on zabbix.* to zabbix@localhost identified by 'zabbix';";
    sudo zcat /usr/share/doc/zabbix-server-mysql/create.sql.gz | mysql -uzabbix -p"zabbix" zabbix;
    sudo sed 's/# DBPassword=/DBPassword=zabbix/g' /etc/zabbix/zabbix_server.conf -i;
    sudo sed 's/Server=127.0.0.1/Server=127.0.0.1,192.168.50.10/g;s/ServerActive=127.0.0.1/ServerActive=127.0.0.1,192.168.50.10/g' /etc/zabbix/zabbix_agentd.conf -i;
    cp /vagrant/zabbix.conf.php /etc/zabbix/web/
    cp /vagrant/index.html /var/www/html/index.html
    sudo systemctl restart zabbix-agent.service
    sudo systemctl restart zabbix-server;
    sudo systemctl restart apache2;
    ansible-galaxy collection install community.zabbix;
    ansible-playbook /vagrant/join.yml -u root -e 'ansible_python_interpreter=/usr/bin/python3'
  
