FROM andronics/debian

LABEL author="andronics <andronics@gmail.com>"

RUN apt-get update && \
    apt-get install -y nginx ca-certificates php-fpm php-json php-xml php-pdo php-phar php-mysqli php-gd php-iconv php-mcrypt && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

ENV PROCESSMAKER_VERSION 3.1.3

# copy file structure
COPY rootfs/ /

VOLUME /etc/nginx/conf.d /opt/processmaker

EXPOSE 80

WORKDIR /opt/processmaker

ENTRYPOINT ["init"]
