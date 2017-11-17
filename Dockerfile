FROM ubuntu:16.04

ADD entrypoint.sh /

ENTRYPOINT '/entrypoint.sh'
