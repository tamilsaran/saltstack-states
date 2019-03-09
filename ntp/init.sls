{% if grains['os'] == 'CentOS'%}
yum install ntp -y:
   cmd.run
systemctl start ntpd:
   cmd.run
{% elif grains['os'] == 'Ubuntu' %}
ntp:
   pkg:
     - installed
   service:
     - running
{% endif %}


