# base imgae
# https://hub.docker.com/_/nginx
FROM nginx:1.23

RUN apt update && apt upgrade -y && \
 apt install -y vim && \
 apt clean

RUN nginx -t
RUN service nginx restart