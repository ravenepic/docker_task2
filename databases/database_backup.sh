#!/bin/bash

DB_NAME="sample"
USER="shyam"
PASSWORD="dev"
TABLES=("users" "roles")
BACKUP_DIR="/home/ubuntu/mysql_backups"
DATE=$(date +%F)

mkdir -p "$BACKUP_DIR"

for table in "${TABLES[@]}"; 
  do
     mysqldump -u "$USER" -p"$PASSWORD" "$DB_NAME" "$table" > "$BACKUP_DIR/${DB_NAME}_${table}_$DATE.sql"
  done
