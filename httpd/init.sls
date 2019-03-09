{% if grains['os'] == 'CentOS'%}
httpd:
   pkg:
     - installed
{% elif grains['os'] == 'Ubuntu' %}
apache2:
   pkg:
     - installed
{% endif %}    


