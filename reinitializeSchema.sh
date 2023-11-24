#!/bin/bash

archivo_log="_errores.log"

> "$archivo_log"

server="172.17.0.2"
user="sa"
password="debCasango*"
database="CemDatabase"

echo "Eliminando la base de datos $database..."
echo "Eliminando la base de datos $database..." >> "$archivo_log"
sqlcmd -S "$server" -U "$user" -P "$password" -Q "DROP DATABASE IF EXISTS $database" >> "$archivo_log" 2>&1

echo "Creando la base de datos $database..."
echo "Creando la base de datos $database..." >> "$archivo_log"
sqlcmd -S "$server" -U "$user" -P "$password" -Q "CREATE DATABASE $database" >> "$archivo_log" 2>&1

for archivo_sql in Alters/*.sql
do
  echo "Ejecutando $archivo_sql..."
  echo "Ejecutando $archivo_sql..." >> "$archivo_log"
  sqlcmd -S "$server" -U "$user" -P "$password" -d "$database" -i "$archivo_sql" >> "$archivo_log" 2>&1
done

find Procedures -type f -name '*.sql' -print0 | while IFS= read -r -d $'\0' archivo_sql
do
  echo "Ejecutando $archivo_sql..."
  echo "Ejecutando $archivo_sql..." >> "$archivo_log"
  sqlcmd -S "$server" -U "$user" -P "$password" -d "$database" -i "$archivo_sql" >> "$archivo_log" 2>&1
done

find Seed -type f -name '*.sql' -print0 | while IFS= read -r -d $'\0' archivo_sql
do
  echo "Ejecutando $archivo_sql..."
  echo "Ejecutando $archivo_sql..." >> "$archivo_log"
  sqlcmd -S "$server" -U "$user" -P "$password" -d "$database" -i "$archivo_sql" >> "$archivo_log" 2>&1
done
