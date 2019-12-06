FROM ubuntu:bionic
FROM python:3

RUN apt-get update \
	&& apt-get install -y git

RUN mkdir /home/test \
	&& cd /home/test \
	&& git clone https://github.com/rosessp/test.git 
	
ADD /home/test/test/message.py /
RUN pip install pystrich
CMD [ "python", "./test/message.py" ]
	
	
CMD ["echo","SUCCESS: Dockerfile Image Created"]


