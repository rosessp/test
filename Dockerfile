FROM ubuntu:bionic
ENV LANG C.UTF-8
USER root

RUN apt-get update \
	&& apt-get install -y git

RUN mkdir /home/test \
	&& cd /home/test \
	&& git clone https://github.com/rosessp/test.git


