#!/bin/sh

envsubst < /db_create.sql | sponge /db_create.sql
echo >>/etc/mysql/conf.d/mysqldump.cnf "bind-address=0.0.0.0"
cat /db_create.sql
mysqld --bind-address=0.0.0.0 --init-file="/db_create.sql" 