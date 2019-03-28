del /f /q C:\Users\zippyops\Downloads\mariadb-10.3.13-winx64.zip:
   cmd.run

rmdir /s /q C:\mariadb-10.3.13-winx64:
   cmd.run

C:\ProgramData\chocolatey\bin\wget -P C:\Users\zippyops\Downloads https://downloads.mariadb.com/MariaDB/mariadb-10.3.13/winx64-packages/mariadb-10.3.13-winx64.zip:
   cmd.run

C:\ProgramData\chocolatey\bin\unzip C:\Users\zippyops\Downloads\mariadb-10.3.13-winx64.zip -d C:\:
   cmd.run


C:\mariadb-10.3.13-winx64\bin\mysqld --install:
   cmd.run

C:\Windows\System32\net start mysql:
   cmd.run
