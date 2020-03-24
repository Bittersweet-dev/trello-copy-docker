vName=django-server

# Build image
sudo docker build --tag ${vName} .

# Create container
sudo docker stop ${vName}
sudo docker rm ${vName}
sudo docker run --name ${vName} -it -d \
	-p "8000:8000" \
	--volume=$(pwd)/trello-copy-django-src:/backend/trello-copy \
	${vName}
