FROM andronics/alpine:edge

LABEL author="andronics"

ENV PYTHON_EGG_CACHE="/app/config/plugins/.python-eggs"

RUN apk add --no-cache --virtual=build-dependencies g++ gcc libffi-dev openssl-dev py2-pip python2-dev && \
    apk add --no-cache ca-certificates curl libressl2.6-libssl openssl p7zip unrar unzip && \
 	apk add --no-cache --repository http://nl.alpinelinux.org/alpine/edge/testing deluge && \
 	pip install --no-cache-dir -U incremental pip && \
	pip install --no-cache-dir -U crypto mako markupsafe pyopenssl service_identity six twisted zope.interface && \
	apk del --purge build-dependencies && \
	rm -rf /root/.cache && \
	adduser -D -s /bin/false deluge

COPY rootfs/ /
