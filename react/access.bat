@echo off

set vName=react-server

@echo on
:: Access container
docker exec -it %vName% /bin/bash