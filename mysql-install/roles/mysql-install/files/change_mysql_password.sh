#!/bin/bash

# MySQL 临时密码
TEMP_PASSWORD=$1

# 新密码
NEW_PASSWORD='Knight1109!'

# 更改 MySQL 密码
mysql --user=root --password="${TEMP_PASSWORD}" --connect-expired-password -e "ALTER USER 'root'@'localhost' IDENTIFIED BY '${NEW_PASSWORD}';"

