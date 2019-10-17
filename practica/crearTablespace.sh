#!/bin/sh
# Accedemos al directorio donde crear el directorio 
cd /home/alumno  
# Creamos el directorio del tablespace  
mkdir datos/paraotros/                   
# Creamos el tablespace en sqlplus  
sqlplus / as sysdba<<EOF           
create tablespace paraotros       
datafile '/home/alumno/datos/paraotros.dbf'    
size 800k                                 
autoextend on                             
next 200k                                    
maxsize 100M;                                
exit                               
EOF