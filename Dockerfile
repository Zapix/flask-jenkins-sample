FROM ubuntu:14.04
MAINTAINER Aleksander Aibulatov <zap.aibulatov@gmail.com>
RUN apt-get update
RUN apt-get install -y \
  build-essential \
  libncurses5 \
  libncurses5-dev \
  python-dev \
  python-pip
RUN pip install virtualenv
RUN virtualenv env

ADD requirements.txt /tmp/requirements.txt
RUN . env/bin/activate && pip install -r /tmp/requirements.txt
ADD src src
