FROM ubuntu:24.04
MAINTAINER Juhoon Kim <kimjuhoon@gmail.com>

USER root
RUN apt update && apt upgrade -y && \
  apt install -y --no-install-recommends python3-minimal python3-pip ffmpeg wget && \
  apt clean && \
  rm -rf /var/lib/apt/lists/* && \
  mkdir -p /opt/scripts
CMD ["bash", "/opt/scripts/start.sh"]
