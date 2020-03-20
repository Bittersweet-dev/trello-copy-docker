@echo off

set vName=django-server

@echo on
:: Build image
docker build --tag %vName% .

:: Create container
docker stop %vName%
docker rm %vName%
docker run --name %vName% -it -d ^
	-p "8000:8000" ^
	--volume="%cd%"/trello-copy-django-src:/backend/trello-copy ^
	%vName%