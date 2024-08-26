#!/bin/bash

# Thiết lập các biến
DATABASE_NAME="mySpecimen"
USER="user"
PASSWORD="abc123!$"
BACKUP_DIR="/backup/mydb"
# BACKUP_FILE="$BACKUP_DIR/$(date +%Y-%m-%d-%H-%M)-$DATABASE_NAME" # Tên file backup -> test cronjob
BACKUP_FILE="$BACKUP_DIR/$(date +%Y-%m-%d)-$DATABASE_NAME"
MONGODUMP_CMD="sudo mongodump"
MONGODUMP_OPTIONS="-u $USER -p $PASSWORD -d $DATABASE_NAME -o $BACKUP_FILE"

$MONGODUMP_CMD $MONGODUMP_OPTIONS 
