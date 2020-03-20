FROM nginx

# prepare directories
WORKDIR /webserver
RUN rm /etc/nginx/conf.d/default.conf
COPY ./default.conf /etc/nginx/conf.d/default.conf

# run servers
CMD ["nginx", "-g", "daemon off;"]
