#!/bin/bash

# Criar diretórios
mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec

# Criar grupos
groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

# Criar usuários
useradd -m carlos
useradd -m maria
useradd -m joao
useradd -m debora
useradd -m sebastiana
useradd -m roberto
useradd -m josefina
useradd -m amanda
useradd -m rogerio

# Adicionar usuários aos grupos
usermod -aG GRP_ADM carlos
usermod -aG GRP_ADM maria
usermod -aG GRP_ADM joao
usermod -aG GRP_VEN debora
usermod -aG GRP_VEN sebastiana
usermod -aG GRP_VEN roberto
usermod -aG GRP_SEC josefina
usermod -aG GRP_SEC amanda
usermod -aG GRP_SEC rogerio

# Definir dono dos diretórios
chown root:root /publico /adm /ven /sec

# Definir permissões
chmod 777 /publico
chmod 700 /adm /ven /sec

# Definir permissões para grupos específicos
chmod 770 /adm
chown :GRP_ADM /adm

chmod 770 /ven
chown :GRP_VEN /ven

chmod 770 /sec
chown :GRP_SEC /sec

# Definir restrições de acesso usando chmod
chmod 700 /publico
