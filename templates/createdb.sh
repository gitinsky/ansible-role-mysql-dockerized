#!/bin/bash
if [ ! -e /var/lib/mysql/ibdata1 ]; then
    mysql_install_db
fi
