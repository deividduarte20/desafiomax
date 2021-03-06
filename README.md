
# Automação de Laboratório
Esse projeto consiste em provisionar maquina virtual com zabbix server instalado, e uma página web de consulta de CEP de forma automatizada. Insere host automaticamente para monitoramento e adiciona template de monitoramento do apache2.

# Requisitos:
   Git
   
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
    
# Uso:

Após os passos anteriores entre no diretório desafiomax e execute o comando para provisionar a máquina virtual:

vagrant up

Para logar na máquina virtual criada pelo vagrant execute o comando:

vagrant ssh

Para acessar a página web com serviço viacep basta abrir o seu navegador e digitar:

http://192.168.50.10

Para acessar a página do zabbix-server basta abrir o seu navegador e digitar:

http://192.168.50.10/zabbix

Usuário: Admin
Senha: zabbix

Foi cronometrado o tempo para a vm ser provisionada, levando em consideração o hardware:

Processador: Intel(R) Core(TM) i3 CPU

SO: Ubuntu

Memória: 8gb ddr3

SSD 240gb

Internet 50mb full

Tempo médio: 7,4 minutos
