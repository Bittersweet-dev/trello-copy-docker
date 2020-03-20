FROM python:3

# django as backend
RUN pip3 install django
RUN pip3 install djangorestframework
RUN pip3 install django-cors-headers

# prepare directory
WORKDIR /backend

# run servers
COPY ./run.sh /backend/
RUN chmod +x run.sh
ENTRYPOINT ["/bin/bash", "./run.sh"]
