del /f /q C:\Users\zippyops\Downloads\latest.zip:
   cmd.run

C:\ProgramData\chocolatey\bin\wget -P C:\Users\zippyops\Downloads https://wordpress.org/latest.zip:
   cmd.run

C:\ProgramData\chocolatey\bin\unzip C:\Users\zippyops\Downloads\latest.zip -d C:\Apache24\htdocs:
   cmd.run

C:\Apache24\htdocs\wordpress\wp-config.php:
   file.managed:
     - source: salt://winpress/wp-config.php

C:\Apache24\bin\httpd -k install:
   cmd.run

C:\Apache24\bin\httpd -k start:
   cmd.run
