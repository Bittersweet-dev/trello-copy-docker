@echo off

set vName=nginx-server

@echo on
:: Access container
docker exec -it %vName% /bin/bash