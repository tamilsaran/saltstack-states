del /f /q C:\Users\zippyops\Downloads\php-5.6.40-Win32-VC11-x64.zip:
   cmd.run


C:\ProgramData\chocolatey\bin\wget -P C:\Users\zippyops\Downloads https://windows.php.net/downloads/releases/php-5.6.40-Win32-VC11-x64.zip:
   cmd.run

rmdir /s /q C:\php:
   cmd.run

mkdir C:\php:
   cmd.run

C:\ProgramData\chocolatey\bin\unzip C:\Users\zippyops\Downloads\php-5.6.40-Win32-VC11-x64.zip -d C:\php:
   cmd.run

C:\php\php.ini:
   file.managed:
     - source: salt://winpress/php.ini
