# Proyeco SBS

El presente proyecto pretende migrar programas pro*c a su equivalente a PL/SQL.

# Configurar entorno

## Configurar PuTTY

Instalar el Google CLI
gcloud compute ssh servidor-red-hat-el8 --zone us-east4-a

https://medium.com/@narayanan_ramakrishnan/connecting-to-a-google-cloud-virtual-machine-with-ssh-using-putty-7b6f0c0465cb

From the left hand menu select SSH >> Auth

Data
HOST:PORT
35.212.107.116
22
user:
luis-mesajil-20240805

## Configurar FTP client

https://pietti.com/como-acceder-por-ftp-a-google-cloud-con-filezilla/

Deberemos establecer conexión con GCP para administrar los archivos de forma remota.

### Create keys

Abrir y crear llave con PuTTYgen o PuTTY Key Generator

Copiamos el texto de la clave pública

luis-mesajil-20240805
```
ssh-rsa AAAAB3NzaC1yc2EAAAABJQAAAQEAlU2vfI/LeL1AxC5JiOUtJNxWCfqR1msH8gWXMNlFWddCDLombobYWC6ortY4beVccydev8K/F4sgJwWlJh5xqgwb+z1/zu58vqH/TMi7/Svo/jVzvwD6WlMOTNAeepzvsksb7HfcS+DeWy16L1DH1TE9xl4NDS/WS1hdlaHOAfeqZuynbZ1IJZvu5NAxxx2eK9ucP+DhKI5qaAa34A637le1FAaCTGiVhhRpQyY0UtMqyc+P9okxUDMwA7WMrCbOT8fJQOAsLi5UvefJUqzARB9H2sKqLT4mLeSxuKdoYKcUrj+51Zz39ExYNvg/110znDLpUTuBU7rV6YFu/nQ2uw== rsa-key-20240805
```

Agregar frase de seguridad si fuese necesario y descargar la llave secreta.

Agregar usuario a grupo www-data a través del gcp ssh command line

sudo usermod -aG www-data luis-mesajil-20240805

groups luis-mesajil-20240805
luis-mesajil-20240805 : luis-mesajil-20240805 adm video google-sudoers dip www-data

Añadir permisos de escritura

sudo chown -R username:www-data /var/www/html/*

Volver a los permisos originales

sudo chown -R www-data:www-data /var/www/html/*

Chatgpt:

ls -l /var/www/html

# Levantar base de datos

sudo su - oracle
cd /home/oracle/scripts
./db_startup.sh
lsnrctl status

```bash
#!/bin/bash
ORACLE_HOME=/u01/app/oracle/product/19.0.0/dbhome_1
ORACLE_SID=bdsph02

export ORACLE_HOME ORACLE_SID
PATH=$ORACLE_HOME/bin:$PATH
export PATH

# Start the listener
lsnrctl start

# Start the database
sqlplus / as sysdba <<EOF
startup;
exit;
EOF
```

Resumen

Listener iniciado correctamente:

El listener está escuchando en el puerto 1521.
Log messages written to /u01/app/oracle/diag/tnslsnr/servidor-red-hat-el8/listener/alert/log.xml.

Base de datos iniciada:

La instancia de Oracle ha sido iniciada y la base de datos ha sido montada y abierta correctamente.

---

Error

````

LSNRCTL for Linux: Version 19.0.0.0.0 - Production on 05-AUG-2024 21:05:25

Copyright (c) 1991, 2019, Oracle.  All rights reserved.

Starting /u01/app/oracle/product/19.0.0/dbhome_1/bin/tnslsnr: please wait...

TNSLSNR for Linux: Version 19.0.0.0.0 - Production
NL-00280: error creating log stream /u01/app/oracle/product/19.0.0/dbhome_1/network/log/listener.log
 NL-00278: cannot open log file
  SNL-00016: snlfohd: error opening file
   Linux Error: 13: Permission denied

Listener failed to start. See the error message(s) above...


SQL*Plus: Release 19.0.0.0.0 - Production on Mon Aug 5 21:05:25 2024
Version 19.3.0.0.0

Copyright (c) 1982, 2019, Oracle.  All rights reserved.

ERROR:
ORA-01017: invalid username/password; logon denied


Enter user-name: Enter password:
ERROR:
ORA-01005: null password given; logon denied


Enter user-name: Enter password:
ERROR:
ORA-01005: null password given; logon denied


SP2-0157: unable to CONNECT to ORACLE after 3 attempts, exiting SQL*Plus

````

### Análisis

**Error de permisos al crear el archivo de log del listener**

NL-00280: error creating log stream /u01/app/oracle/product/19.0.0/dbhome_1/network/log/listener.log
Linux Error: 13: Permission denied




Error de autenticación en SQL*Plus:

ORA-01017: invalid username/password; logon denied
ORA-01005: null password given; logon denied

### Sphere db connection

itmigra
sR147814

TNS file
````
BDSPH01 =
  (DESCRIPTION =
    (ADDRESS = (PROTOCOL = TCP)(HOST = srv01.sphere.com.pe)(PORT = 1521))
    (CONNECT_DATA =
      (SERVER = DEDICATED)
      (SERVICE_NAME = bdsph01)
    )
  )
BDSPH02 =
  (DESCRIPTION =
    (ADDRESS = (PROTOCOL = TCP)(HOST = srv03.sphere.com.pe)(PORT = 1521))
    (CONNECT_DATA =
      (SERVER = DEDICATED)
      (SERVICE_NAME = bdsph02)
    )
  )

````

# Project


Test IAA2 (ya migrado)

Manual de despliegue

SBS/Enviados/SieteMigrados/ProcesosMigrados/IAA2

itmigra_bandeja
sudo su - oracle

ore file

cd afil

sh prueba_its

chmod variablesoracle 755

cd /saafp/itmigra/afil



