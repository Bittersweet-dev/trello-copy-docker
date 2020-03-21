FROM node

# prepare directory
WORKDIR /frontend

# run servers
COPY ./run.sh /frontend/
RUN sed -i 's/\r$//' run.sh
RUN chmod +x run.sh
ENTRYPOINT ["/bin/bash", "./run.sh"]
