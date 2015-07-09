#!/bin/bash
chown -R mysql:mysql /var/lib/mysql
if [ ! -e /var/lib/mysql/ibdata1 ]; then
    mysql_install_db
fi
{% for database in database_list %}
mysqladmin create {{ database.name }}
mysql -e "GRANT ALL PRIVILEGES ON {{ database.name }}.* TO '{{ database.user }}'@'%' IDENTIFIED BY '{{ database.password }}'"
{% endfor %}
mysql_tzinfo_to_sql /usr/share/zoneinfo | mysql -u root mysql
