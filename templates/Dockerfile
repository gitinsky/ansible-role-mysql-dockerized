FROM gitinsky/baseimage:0.1.9
MAINTAINER Git In Sky <support@gitinsky.com>

RUN apt-get update && bash -c "unset TERM && apt-get -y install mysql-server" && bash -c "rm -rf /var/lib/mysql/*"
VOLUME /var/lib/mysql
ADD mysql.rb /etc/eye/mysql.rb
ADD createdb.sh /root/createdb.sh
