FROM andronics/debian:jessie-slim

LABEL author="andronics <andronics@gmail.com>"

RUN apt-get update && \
    apt-get install -y qbittorrent-nox && \
    rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* && \
    useradd -U -r -s /bin/false qbittorrent

COPY rootfs/ /