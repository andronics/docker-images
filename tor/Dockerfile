FROM andronics/debian

LABEL author="andronics <andronics@gmail.com>"
LABEL description="TOR Server"
LABEL version="1.0"

ENV TOR_VERSION "0.3.2.10"
ENV TOR_SOCKS_VERSION "2.2.0"

RUN apt-get update && \
	apt-get install -y apt-transport-https automake git gcc libevent-dev libssl-dev libtool make && \
	echo "[+] Cloning TOR Repository" && \
	git clone https://git.torproject.org/tor.git /tmp/tor && \
	echo "[+] Checking Out TOR Version ${TOR_VERSION}" && \
	cd /tmp/tor && \
	git checkout tags/tor-${TOR_VERSION} && \
	echo "[+] Compiling TOR Binary" && \
	./autogen.sh && \
	./configure --disable-asciidoc && \
	make && \
	echo "[+] Installing TOR Binary" && \
	make install && \
	echo "[+] Cloning TORSOCKS Repository" && \
	git clone https://git.torproject.org/torsocks.git /tmp/torsocks && \
	echo "[+] Checking Out TORSOCKS Version ${TOR_SOCKS_VERSION}" && \
	cd /tmp/torsocks && \
	git checkout tags/v${TOR_SOCKS_VERSION} && \
	echo "[+] Compiling TORSOCKS Binary" && \
	./autogen.sh && \
	./configure && \
	make && \
	echo "[+] Installing TOR Binary" && \
	make install


COPY rootfs/ /

ENTRYPOINT /init
