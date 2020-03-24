vName=react-server

# Build image
sudo docker build --tag ${vName} .

# Create container
sudo docker stop ${vName}
sudo docker rm ${vName}
sudo docker run --name ${vName} -it -d \
	-p "3000:3000" \
	--volume=$(pwd)/trello-copy-react-src:/frontend/trello-copy-restricted \
	--volume=$(pwd)/trello-copy-react-src/src:/frontend/trello-copy/src \
	--volume=$(pwd)/trello-copy-react-build/build:/frontend/trello-copy/build \
	${vName}
