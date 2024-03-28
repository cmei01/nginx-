FROM ubuntu:20.04  
LABEL maintainer="ebaycmei@gmail.com" 
RUN  apt-get -y update && apt-get -y install nginx
COPY files/default /etc/nginx/sites-available/default
COPY files/index.html /usr/share/nginx/html/index.html
COPY file/intro.html /usr/share/nginx/html/intro.html
EXPOSE 80
CMD ["/usr/sbin/nginx", "-g", "daemon off;"]
