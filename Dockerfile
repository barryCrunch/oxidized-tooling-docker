FROM python:3.7.2-alpine

MAINTAINER michael.barry@intlfcstone.com

RUN apk add git
RUN mkdir oxidized-tooling
RUN rm entrypoint.sh
RUN git clone https://github.com/barryCrunch/oxidized-tooling.git
RUN git clone https://github.com/barryCrunch/oxidized-tooling-docker.git
RUN pip install pynetbox
WORKDIR /oxidized-tooling
RUN chmod +x entrypoint.sh
