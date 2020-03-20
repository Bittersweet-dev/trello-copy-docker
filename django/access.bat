@echo off

set vName=django-server

@echo on
:: Access container
docker exec -it %vName% /bin/bash