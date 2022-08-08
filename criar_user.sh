#!/bin/bash

echo "Criando diretórios..."

mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec

echo "Criando grupos de usuários..."

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "Criando usuários..."

useradd leia -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_ADM
useradd luke -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_ADM
useradd han -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_ADM

useradd padme -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_VEN
useradd anakin -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_VEN
useradd ben -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_VEN

useradd yoda -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_SEC
useradd vader -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_SEC
useradd palpatine -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_SEC

echo "Especificando permissões dos diretórios...."

chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

chmod 770 /adm
chmod 770 /ven
chmod 770 /sec
chmod 777 /publico


echo "Fim....."
