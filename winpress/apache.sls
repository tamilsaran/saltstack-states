choc_boot:
   module.run:
     - name: chocolatey.bootstrap

wget:
   chocolatey.installed:
     - name: wget

del /f /q C:\Users\zippyops\Downloads\httpd-2.4.38-win64-VC14.zip:
   cmd.run

C:\ProgramData\chocolatey\bin\wget -P C:\Users\zippyops\Downloads https://home.apache.org/~steffenal/VC14/binaries/httpd-2.4.38-win64-VC14.zip:
   cmd.run

unzip:
   chocolatey.installed:
     - name: unzip

rmdir /s /q C:\Apache24:
   cmd.run

rmdir /s /q C:\Users\zippyops\Downloads\httpd:
   cmd.run

mkdir C:\Users\zippyops\Downloads\httpd:
   cmd.run

C:\ProgramData\chocolatey\bin\unzip C:\Users\zippyops\Downloads\httpd-2.4.38-win64-VC14.zip -d C:\Users\zippyops\Downloads\httpd:
   cmd.run

move C:\Users\zippyops\Downloads\httpd\Apache24 C:\:
   cmd.run

del /f /q C:\Apache24\htdocs\*:
   cmd.run

C:\Apache24\bin\vcruntime140.dll:
   file.managed:
     - source: salt://winpress/vcruntime140.dll

C:\Apache24\conf\httpd.conf:
   file.managed:
     - source: salt://winpress/httpd.conf
