FROM andronics/mono:debian-jessie-slim

LABEL author="andronics <andronics@gmail.com>"

ENV XDG_CONFIG_HOME="/app/config/xdg"

RUN apt-get update && \
	apt-get install -y curl jq libmono-cil-dev && \
	#jack_tag=$(curl -sX GET "https://api.github.com/repos/Jackett/Jackett/releases/latest" | awk '/tag_name/{print $4;exit}' FS='[""]') && \
	#curl -o /tmp/jacket.tar.gz -L https://github.com/Jackett/Jackett/releases/download/$jack_tag/Jackett.Binaries.Mono.tar.gz && \
	curl -o /tmp/ladarr.tar.gz -L "https://github.com/lidarr/Lidarr/releases/download/v0.5.0.576/Lidarr.develop.0.5.0.576.linux.tar.gz" && \
	mkdir -p /opt/lidarr && \
 	tar ixzf /tmp/ladarr.tar.gz -C /opt/lidarr --strip-components=1 && \
 	rm -rf /tmp/* /var/lib/apt/lists/* /var/tmp/* && \
	useradd -U -s /bin/false lidarr

COPY rootfs/ /

EXPOSE 7878
