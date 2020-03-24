vName=nginx-server

# Build image
sudo docker build --tag ${vName} .

# Create container
sudo docker stop ${vName}
sudo docker rm ${vName}
sudo docker run --name ${vName} -d \
	--volumes-from react-server \
	-p "80:80" \
	${vName}
