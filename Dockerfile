FROM python:3.7.2-alpine

MAINTAINER michael.barry@intlfcstone.com

RUN apk add git
RUN mkdir oxidized-tooling
RUN git clone https://github.com/barryCrunch/oxidized-tooling.git
RUN pip install pynetbox
WORKDIR /oxidized-tooling
COPY --chown=root:root entrypoint.sh .
