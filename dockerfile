##build command:
##docker build . --no-cache -t "calebsolo/wincorepython352:latest"

FROM microsoft/windowsservercore:latest
###cannot use Nano, must be Core


##copies python to c:\python\
##copy all python files to root directory of build file
COPY ./python/* ./python/

##set env variables
RUN powershell.exe -c '$env:Path += “;C:\Python;C:\Python\Scripts”'
RUN powershell.exe -c "setx PATH $env:Path /M"

##final command to run, shell.  Unnecessary??
CMD cmd.exe
