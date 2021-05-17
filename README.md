
# Esse projeto consiste em provisionar maquina virtual com zabbix server instalado, e uma página web de consulta de CEP de forma automatizada.


# Sumário

   ### Requisitos
   ### Downloads
   ### Uso
   ### Conclusão


# Requisitos:
   Git (Opcional pois você pode baixar a pasta desafiomax com )
   VirtualBox
   Vagrant

Caso esteja usando linux execute o comando a seguir de acordo a distribuição que você usa, execute logado como root

Para instalar no Debian/Ubuntu execute o comando:
apt install vagrant -y

Para instalar no Centos execute o comando:
yum install vagrant -y

Para instalar o vagrant no windows clique no link abaixo:

https://www.vagrantup.com/downloads

Para clonar este reposítório do seu linux basta rodar o comando:

git clone https://github.com/deividduarte20/desafiomax.git

# Downloads:
  
    Baixe os arqivos:
    index.html - Página viacep (página que consulta cep)
    README.md - Instruções
    Vagrantfile - Arquivo para provisionar máquina virtual através do vagrant
    zabbix.conf.php - Arquivo uzado para autocompletar processo de finalização de instalação do zabbix-server  
    
# Uso:

Após os passo anteriores entre no diretório desafiomax e execute o comando para provisionar a máquina virtual:

vagrant up

Para logar na máquina virtual criada pelo vagrant execute o comando:

vagrant ssh

Para acessar a página web com serviço viacep basta abrir o seu navegador e digitar:

http://192.168.50.10

Para acessar a página do zabbix-server asta abrir o seu navegador e digitar:

http://192.168.50.10/zabbix



