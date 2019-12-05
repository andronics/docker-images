FROM andronics/ubuntu:xenial

LABEL author="andronics <andronics@gmail.com>"

ARG MONO_REPO=ubuntu
ARG MONO_DIST=xenial
ARG MONO_VERSION=5.10.1.47

RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF && \
    echo "deb http://download.mono-project.com/repo/${MONO_REPO} stable-${MONO_DIST}/snapshots/${MONO_VERSION} main" > /etc/apt/sources.list.d/mono-official-stable.list && \
    apt-get update && \
    apt-get install -y mono-runtime && \
    rm -rf /var/lib/apt/lists/* /tmp/*