FROM ubuntu

RUN apt-get update \
	&& apt-get install -y git

RUN mkdir /home/test \
	&& cd /home/test \
	&& git clone https://github.com/rosessp/demo.git

CMD ["echo","SUCCESS: Docker Image Created"] 
