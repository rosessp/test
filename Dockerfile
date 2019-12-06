FROM python:3


RUN apt-get update \
	&& apt-get install -y git

RUN mkdir /home/test \
	&& cd /home/test \
	&& git clone https://github.com/rosessp/test.git \
	&& cd /test
	

ADD message.py 
CMD [ "python", "./message.py" ]
	
	
CMD ["echo","SUCCESS: Dockerfile Image Created"]


