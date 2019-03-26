wget:
   pkg:
     - installed
rm -rf /var/www/html/*:
   cmd.run

wget -P /root wget http://wordpress.org/latest.tar.gz;tar xzf /root/latest.tar.gz -C /var/www/html --strip 1:
   cmd.run

cp /var/www/html/wp-config-sample.php /var/www/html/wp-config.php:
   cmd.run

sed -i 's/database_name_here/zippyops/g' /var/www/html/wp-config.php:
   cmd.run
sed -i 's/username_here/zippyops/g' /var/www/html/wp-config.php:
   cmd.run
sed -i 's/password_here/zippyops/g' /var/www/html/wp-config.php:
   cmd.run

/var/www/html/.htaccess:
   file.managed:
     - source: salt://wordpress/htaccess
{% if grains['os'] == 'CentOS' %}
systemctl stop httpd;systemctl start httpd:
   cmd.run
{% elif grains['os'] == 'Ubuntu' %}
systemctl stop apache2;systemctl start apache2:
   cmd.run
{% endif %}
