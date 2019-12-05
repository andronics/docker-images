FROM andronics/mono:debian-jessie-slim

LABEL author="andronics <andronics@gmail.com>"

ENV XDG_CONFIG_HOME="/app/config/xdg"

RUN apt-key adv --keyserver keyserver.ubuntu.com --recv-keys FDA5DFFC && \
	echo "deb http://apt.sonarr.tv/ master main" > /etc/apt/sources.list.d/sonarr.list && \
	apt-get update && \
	apt-get install -y --force-yes nzbdrone && \
	apt-get clean && \
	rm -rf /tmp/* /var/lib/apt/lists/* /var/tmp/* && \
	useradd -U -s /bin/false nzbdrone

COPY rootfs/ /

EXPOSE 8090
