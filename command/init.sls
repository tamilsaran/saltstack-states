{% if grains['os'] == 'CentOS'%}
systemctl status ntpd:
  cmd.run
{% endif %}   
