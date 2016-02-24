FROM ubuntu

RUN apt-get update && apt-get install -y build-essential libssl-dev zlib1g-dev wget libpcre3 libpcre3-dev
ENV NGINXVERSION nginx-1.9.9
RUN mkdir src && cd src && wget http://nginx.org/download/$NGINXVERSION.tar.gz && tar xvf $NGINXVERSION.tar.gz

# Configure the sub filter module
RUN cd src/$NGINXVERSION && ./configure --with-http_sub_module
RUN cd src/$NGINXVERSION && make install

VOLUME ["/usr/local/nginx/root","/usr/local/nginx/cloud-configs"]

# This is the port nginx listens to by default
EXPOSE 80

ENTRYPOINT ["/usr/local/nginx/sbin/nginx"]
CMD ["-c", "/usr/local/nginx/conf/container.conf"]

ADD container.conf /usr/local/nginx/conf/
