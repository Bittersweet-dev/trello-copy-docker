FROM node

# prepare directory
WORKDIR /frontend

# run servers
COPY ./run.sh /frontend/
RUN chmod +x run.sh
ENTRYPOINT ["/bin/bash", "./run.sh"]
