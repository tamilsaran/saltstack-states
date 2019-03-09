Installsomepackages:
  chocolatey.installed:
     - name: jdk8


C:\Program Files\Apache Software Foundation\tomcat\apache-tomcat-8.5.12\conf\tomcat-users.xml:
  file.managed:
   - source: salt://chocolatey/tomcat-users.xml
