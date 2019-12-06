FROM ubuntu:bionic

RUN apt-get update \
	&& apt-get install -y git

RUN mkdir /home/test \
	&& cd /home/test \
	&& git clone https://github.com/rosessp/test.git \
	&& cd /test
	
FROM python:3
ADD message.py /
RUN pip install pystrich
CMD [ "python", "./message.py" ]
	
	
CMD ["echo","SUCCESS: Dockerfile Image Created"]


