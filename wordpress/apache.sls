{% if grains['os'] == 'CentOS' %}
httpd:
   pkg:
     - installed

firewall-cmd --permanent --add-port=80/tcp:
   cmd.run

firewall-cmd --reload:
   cmd.run

{% elif grains['os'] == 'Ubuntu' %}
apache2:
   pkg:
     - installed

ufw allow 80/tcp:
   cmd.run

{% endif %}
