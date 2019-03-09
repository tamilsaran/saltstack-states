tomcat:
  pkg:
    - installed
  service:
    - running

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
    - source: salt://demotom/tomcat-users.xml

cmd.run:
    - name: 'systemctl retart tomcat'
    - require:
      - file: /root
