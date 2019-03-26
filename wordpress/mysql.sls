mariadb-server:
   pkg:
     - installed
mariadb:
   service:
     - running

if echo 'show databases;' | /usr/bin/mysql | grep -q zippyops;then echo 'present';else echo "create database zippyops;" | /usr/bin/mysql;fi:
   cmd.run

if echo 'select user from mysql.user;' | /usr/bin/mysql | grep -q zippyops;then echo 'present';else echo "CREATE USER 'zippyops'@'localhost' IDENTIFIED BY 'zippyops';" | /usr/bin/mysql;fi:
   cmd.run

echo "GRANT USAGE ON *.* TO 'zippyops'@'localhost' IDENTIFIED BY 'zippyops';" | /usr/bin/mysql:
   cmd.run

echo "GRANT ALL privileges ON zippyops.* TO 'zippyops'@'localhost';" | /usr/bin/mysql:
   cmd.run

echo "FLUSH PRIVILEGES;" | /usr/bin/mysql:
   cmd.run
