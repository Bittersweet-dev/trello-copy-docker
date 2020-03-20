#!/bin/bash
cd /backend
if [ -d "trello-copy" -a -f "trello-copy/manage.py" ]; then
	cd /backend/trello-copy
	python manage.py migrate
	python manage.py runserver 0:8000 &
fi

exec "/bin/bash";
