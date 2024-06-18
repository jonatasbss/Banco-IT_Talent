#!/bin/bash
set -e

mysql -u root -p$MYSQL_ROOT_PASSWORD -e "CREATE DATABASE IF NOT EXISTS $MYSQL_DATABASE;"
mysql -u root -p$MYSQL_ROOT_PASSWORD $MYSQL_DATABASE < /docker-entrypoint-initdb.d/dump.sql
