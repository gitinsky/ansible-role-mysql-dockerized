#!/bin/bash
chown -R mysql:mysql /var/lib/mysql
if [ ! -e /var/lib/mysql/ibdata1 ]; then
    mysql_install_db
fi
