FROM python:3.7.2-alpine

MAINTAINER michael.barry@intlfcstone.com

RUN apk add git
RUN mkdir oxidized-tooling
RUN pip install pynetbox
ADD . /oxidized-tooling
RUN git clone https://github.com/barryCrunch/oxidized-tooling.git
WORKDIR /oxidized-tooling
RUN chmod +x entrypoint.sh
