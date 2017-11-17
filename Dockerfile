FROM ubuntu:16.04

# install dependencies via apt
RUN apt-get update && \
 apt-get install -y cron openjdk-8-jre-headless && \
 apt-get autoremove -y && \
 apt-get -y clean && \
 rm -rf /var/lib/apt/lists/*

VOLUME /config

ADD entrypoint.sh /

ENTRYPOINT '/entrypoint.sh'
