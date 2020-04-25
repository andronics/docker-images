FROM andronics/ubuntu:bionic

LABEL author="andronics"

ARG DEBIAN_FRONTEND="noninteractive"
ENV PYTHON_EGG_CACHE="/app/config/plugins/.python-eggs"

RUN apt-get update && \
	apt-get install -y gnupg && \
	apt-key adv --keyserver keyserver.ubuntu.com --recv-keys C5E6A5ED249AD24C && \
	echo "deb http://ppa.launchpad.net/deluge-team/stable/ubuntu bionic main" >> /etc/apt/sources.list.d/deluge.list && \
	echo "deb-src http://ppa.launchpad.net/deluge-team/stable/ubuntu bionic main" >> /etc/apt/sources.list.d/deluge.list && \
	apt-get update && \
	apt-get install -y deluged deluge-console deluge-web p7zip-full unrar unzip && \
	rm -rf /root/.cache /tmp/* /var/lib/apt/lists/* /var/tmp/* && \
	adduser --disabled-password --gecos "" deluge

COPY rootfs/ /
