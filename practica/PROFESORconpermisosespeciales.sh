#!/bin/bash

###################################################################################
# Ejercicio 3 :PROFESOR con permisos especiales.                                  #
# Haz que el usuario PROFESOR tenga permisos de lectura en las vistas de sistema  #
# DBATABLES y DBATABLESPACES.                                                     #
###################################################################################
# PROFESOR con permisos de lectura en las V.sistema DBA_TABLES & DBA_TABLESPACES. #
# Conectamos con sys. para dar los privilegios.                                   #
###################################################################################

sqlplus / as sysdba<<EOF
drop role permisosProfe;
create role permisosProfe;
GRANT SELECT ON DBA_TABLES TO permisosProfe;
GRANT SELECT ON DBA_TABLESPACES TO permisosProfe;

GRANT permisosProfe TO PROFESOR;
exit
EOF
