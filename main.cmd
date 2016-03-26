echo 'Ensuring Chocolatey is Installed'
@powershell -NoProfile -ExecutionPolicy Bypass -Command "iex ((new-object net.webclient).DownloadString('https://chocolatey.org/install.ps1'))" && SET PATH=%PATH%;%ALLUSERSPROFILE%\chocolatey\bin

echo 'Ensuring Puppet is Installed'
@powershell -NoProfile -ExecutionPolicy Bypass -Command "choco install puppet -y"
