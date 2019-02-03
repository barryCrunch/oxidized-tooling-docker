FROM python:3.7.2-alpine

MAINTAINER michael.barry@intlfcstone.com

RUN apk add git
RUN mkdir oxidized-tooling
RUN pip install pynetbox
ADD http://www.convert-unix-time.com/api?timestamp=now /tmp/bustcache
RUN git clone https://github.com/barryCrunch/oxidized-tooling.git
RUN git clone https://github.com/barryCrunch/oxidized-tooling-docker.git
RUN cp oxidized-tooling-docker/entrypoint.sh oxidized-tooling/
WORKDIR /oxidized-tooling
RUN chmod +x entrypoint.sh
