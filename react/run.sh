#!/bin/bash
cd /frontend
if [ -d "trello-copy-restricted" ]; then
	cp -r trello-copy-restricted/* trello-copy/
	cd trello-copy
	npm install
	npm start
fi

exec "/bin/bash";
