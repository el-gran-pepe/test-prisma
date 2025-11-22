#!/bin/bash

curl https://packages.microsoft.com/keys/microsoft.asc | apt-key add -
curl https://packages.microsoft.com/config/ubuntu/22.04/prod.list -o /etc/apt/sources.list.d/mssql-release.list

exit

sudo apt update

ACCEPT_EULA=Y apt install -y php8.1-sqlsrv php8.1-pdo-sqlsrv
