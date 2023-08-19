#!/bin/bash

#Criar pastas publico, adm, ven, sec
sudo mkdir /publico
sudo mkdir /adm
sudo mkdir /ven
sudo mkdir /sec

#Criar grupos GRP_ADM, GRP_VEN, GRP_SEC
sudo groupadd GRP_ADM
sudo groupadd GRP_VEN
sudo groupadd GRP_SEC

#Criar usuários no grupo GRP_ADM
sudo useradd carlos -c "Carlos da Silva" -s /bin/bash -p $(openssl passwd 123456) -G GRP_ADM
sudo useradd maria -c "Maria da Silva" -s /bin/bash -p $(openssl passwd 123456) -G GRP_ADM
sudo useradd joao -c "Joao da Silva" -s /bin/bash -p $(openssl passwd 123456) -G GRP_ADM

#Criar usuários no grupo GRP_VEN
sudo useradd debora -c "Debora da Silva" -s /bin/bash -p $(openssl passwd 123456) -G GRP_VEN
sudo useradd sebastiana -c "Sebastiana da Silva" -s /bin/bash -p $(openssl passwd 123456) -G GRP_VEN
sudo useradd roberto -c "Roberto da Silva" -s /bin/bash -p $(openssl passwd 123456) -G GRP_VEN

#Criar usuários no grupo GRP_SEC
sudo useradd josefina -c "Josefina da Silva" -s /bin/bash -p $(openssl passwd 123456) -G GRP_SEC
sudo useradd amanda -c "Amanda da Silva" -s /bin/bash -p $(openssl passwd 123456) -G GRP_SEC
sudo useradd rogerio -c "Rogerio da Silva" -s /bin/bash -p $(openssl passwd 123456) -G GRP_SEC

#Permissoes
sudo chmod 777 /publico
sudo chown root:GRP_ADM /adm
sudo chmod 770 /adm
sudo chown root:GRP_VEN /ven
sudo chmod 770 /ven
sudo chown root:GRP_SEC /sec
sudo chmod 770 /sec


