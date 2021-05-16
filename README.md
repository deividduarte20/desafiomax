
## Esse projeto contém arquivo de Vagrantfile personalizado para provisionar máquina virtual Debian busterX64 com nginx instalado


# Sumário

   ### Requisitos
   ### Downloads
   ### Uso
   ### Conclusão


# Requisitos:

As etapas devem ser seguidas em um computador com o SO Linux.

Debian Buster x64/Centos 8
Vagrant
Git
ansible

Execute os comandos a seguir logado como root


Para instalar no Debian/Ubuntu execute o comando:
apt install vagrant -y

Para instalar no Centos execute o comando:
yum install vagrant -y

Para clonar este reposítório do seu linux basta rodar o comando:

git clone https://github.com/deividduarte20/desafiomax.git

# Downloads:
  
    Baixe os arqivos:
    index.html
    README.md
    setup.sh
    Vagrantfile

# Uso:

Após os passo anteriores entre no diretório desafiomax e execute o comando para provisionar a máquina virtual:

vagrant up

Para logar na máquina virtual criada pelo vagrant execute o comando:

vagrant ssh



