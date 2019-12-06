FROM ubuntu:bionic


RUN apt-get update \
	&& apt-get install -y git

RUN apt-get -y install python3.5

RUN mkdir /home/test \
	&& cd /home/test \
	&& git clone https://github.com/rosessp/test.git \
	&& python test/message.py
	
	
CMD ["echo","SUCCESS: Dockerfile Image Created"]


