FROM andronics/debian

LABEL author="andronics <andronics@gmail.com>"

COPY rootfs/ /

ENV HOME="/app/config" \
	PYTHONIOENCODING="utf-8"

RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:11371 --recv-keys 0x98703123E0F52B2BE16D586EF13930B14BB9F05F && \
	echo "deb http://ppa.launchpad.net/jcfp/nobetas/ubuntu xenial main" >> /etc/apt/sources.list.d/sabnzbd.list && \
	echo "deb-src http://ppa.launchpad.net/jcfp/nobetas/ubuntu xenial main" >> /etc/apt/sources.list.d/sabnzbd.list && \
	echo "deb http://ppa.launchpad.net/jcfp/sab-addons/ubuntu xenial main" >> /etc/apt/sources.list.d/sabnzbd.list && \
	echo "deb-src http://ppa.launchpad.net/jcfp/sab-addons/ubuntu xenial main" >> /etc/apt/sources.list.d/sabnzbd.list && \
	apt-get update && \
	apt-get install -y p7zip-full par2-tbb python-sabyenc sabnzbdplus unrar unzip && \
	apt-get clean && \
	rm -rf /tmp/* /var/lib/apt/lists/* /var/tmp/*

EXPOSE 8080 9090
