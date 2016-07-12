#!/bin/bash
if [ ! -f /var/lib/mysql/ibdata1 ]; then
	echo "Copying default my.cnf to /usr/share/ folder"
	cp /etc/mysql/my.cnf /usr/share/mysql/my-default.cnf
		
	echo "Initialize mysql db"
	mysql_install_db
		
	echo "Run mysql"
	/usr/bin/mysqld_safe & tail -f /dev/null

fi
	echo "DB already initialized; Starting MySQL"
	/usr/bin/mysqld_safe & tail -f /dev/null

