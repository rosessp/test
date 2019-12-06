FROM ubuntu:bionic


RUN apt-get update \
	&& apt-get install -y git

RUN mkdir /home/test \
	&& cd /home/test \
	&& git clone https://github.com/rosessp/test.git
	
	
CMD ["echo","SUCCESS: Docker Image Created"]


