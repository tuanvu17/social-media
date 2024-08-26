#!/bin/bash

# Thiết lập các biến
DATABASE_NAME="mySpecimen"
USER="user"
PASSWORD="abc123!$"
BACKUP_DIR="/backup/mydb"
RESTORE_FILE="$BACKUP_DIR/$(date +%Y-%m-%d)-$DATABASE_NAME"
MONGORESTORE_CMD="sudo mongorestore"
# MONGODUMP_OPTIONS="-u $USER -p $PASSWORD -d $DATABASE_NAME" # Tùy chọn mongodump (tên người dùng, mật khẩu)
MONGODUMP_OPTIONS="-u $USER -p $PASSWORD -d $DATABASE_NAME $RESTORE_FILE/$DATABASE_NAME" # Tùy chọn mongodump (tên người dùng, mật khẩu)

# Khởi chạy lệnh mongorestore
$MONGORESTORE_CMD $MONGODUMP_OPTIONS

# Xóa file backup đã giải nén (tùy chọn)
# rm -rf $RESTORE_FILE

# Thông báo thành công/thất bại
if [ $? -eq 0 ]; then
  echo "Restore database $DATABASE_NAME thành công!"
else
  echo "Restore database $DATABASE_NAME thất bại!"
  exit 1
fi