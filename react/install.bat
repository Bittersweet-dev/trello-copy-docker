@echo off

set vName=react-server

@echo on
:: Build image
docker build --tag %vName% .

:: Create container
docker stop %vName%
docker rm %vName%
docker run --name %vName% -it -d ^
	-p "3000:3000" ^
	--volume="%cd%"/trello-copy-react-src:/frontend/trello-copy-restricted ^
	--volume="%cd%"/trello-copy-react-src/src:/frontend/trello-copy/src ^
	--volume="%cd%"/trello-copy-react-build/build:/frontend/trello-copy/build ^
	%vName%
