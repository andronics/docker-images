FROM andronics/debian:jessie-slim AS build

LABEL author="andronics <andronics@gmail.com>"

ARG COMPILER_VER=4.9

RUN apt-get update && \
	apt-get install -y --no-install-recommends --no-install-suggests ca-certificates build-essential cmake curl perl autoconf automake git zip libtool libssl-dev

COPY build/ /

RUN echo "using gcc : $COMPILER_VER : /usr/bin/g++-$COMPILER_VER ; " >> $HOME/user-config.jam && \
	cd /app && \
	chmod +x *.sh && \
	sleep 1 && \
	./boost.sh && \
	./libtorrent.sh && \
	./hadouken.sh
		
RUN apt-get purge -y build-essential cmake && \
	rm -rf /root/.cache /tmp/* /var/lib/apt/lists/* /var/tmp/*

##################################################################

FROM andronics/debian:jessie-slim

LABEL author="andronics <andronics@gmail.com>"

RUN apt-get update && \
	apt-get install -y libssl-dev && \
	rm -rf /root/.cache /tmp/* /var/lib/apt/lists/* /var/tmp/* && \
	useradd -U -r -s /bin/false hadouken

COPY rootfs/ /
COPY --from=build /root/hadouken/linux/build/bin /opt/hadouken

 