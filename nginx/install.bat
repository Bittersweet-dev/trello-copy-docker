@echo off

set vName=nginx-server

@echo on
:: Build image
docker build --tag %vName% .

:: Create container
docker stop %vName%
docker rm %vName%
docker run --name %vName% -d ^
	--volumes-from react-server ^
	-p "80:80" ^
	%vName%
