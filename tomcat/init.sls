{% if grains['os'] == 'CentOS'%}
tomcat:
  pkg:
    - installed

tomcat-webapps:
  pkg:
    - installed

tomcat-admin-webapps:
  pkg:
    - installed

/etc/tomcat/tomcat-users.xml:
  file.managed:
    - user: root
    - group: root
    - mode: 0777
    - source: salt://tomcat/centos/tomcat-users.xml
/var/lib/tomcat/webapps/jetty-helloworld-webapp-1.0.war:
   file.managed:
    - source: salt://tomcat/jetty-helloworld-webapp-1.0.war
systemctl stop tomcat:
  cmd.run
systemctl start tomcat:
  cmd.run

{% elif grains['os'] == 'Ubuntu' %}
tomcat8:
  pkg:
    - installed
  service:
    - running

tomcat8-docs:
  pkg:
    - installed

tomcat8-examples:
  pkg:
    - installed

tomcat8-admin:
  pkg:
    - installed

/etc/tomcat8/tomcat-users.xml:
  file.managed:
    - user: root
    - group: root
    - mode: 0777
    - source: salt://tomcat/ubuntu/tomcat-users.xml
/var/lib/tomcat8/webapps/jetty-helloworld-webapp-1.0.war:
   file.managed:
    - source: salt://tomcat/jetty-helloworld-webapp-1.0.war
systemctl stop tomcat8:
  cmd.run
systemctl start tomcat8:
  cmd.run
{% endif %}
