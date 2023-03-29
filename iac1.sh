#!/bin/bash

echo "Iniciando..."

echo "Criando os diretórios..."

mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec

echo "Criando os grupos..."

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC


echo "Criando os usuários..."

# Usuários Administrativo
useradd carlos  -s /bin/bash -m -p $(openssl passwd -1 Senha123) -G GRP_ADM
passwd -e carlos

useradd maria  -s /bin/bash -m -p $(openssl passwd -1 Senha123) -G GRP_ADM
passwd -e maria

useradd joao  -s /bin/bash -m -p $(openssl passwd -1 Senha123) -G GRP_ADM
passwd -e joao

# Usuário de Vendas
useradd debora  -s /bin/bash -m -p $(openssl passwd -1 Senha123) -G GRP_VEN
passwd -e debora

useradd sebastiana  -s /bin/bash -m -p $(openssl passwd -1 Senha123) -G GRP_VEN
passwd -e sebastiana

useradd roberto  -s /bin/bash -m -p $(openssl passwd -1 Senha123) -G GRP_VEN
passwd -e roberto

# Usuários da Secretária

useradd josefina  -s /bin/bash -m -p $(openssl passwd -1 Senha123) -G GRP_SEC
passwd -e  josefina

useradd amanda  -s /bin/bash -m -p $(openssl passwd -1 Senha123) -G GRP_SEC
passwd -e  amanda

useradd rogerio  -s /bin/bash -m -p $(openssl passwd -1 Senha123) -G GRP_SEC
passwd -e rogerio

echo "Concedendo as permissões..."

chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

chmod 777 /publico
chmod 770 /adm
chmod 770 /ven
chmod 770 /sec

echo "Fim..."


