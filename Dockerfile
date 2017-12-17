#
# Dockerfile for pycon.it
#
FROM ubuntu:14.04
MAINTAINER robipolli@gmail.com
ENV LANG=IT_it@UTF-8

RUN apt-get -y update && apt-get -y install \
	python-dev \
	python-pip \
	git
 

COPY Dockerfile /Dockerfile
COPY requirements.txt /requirements.txt

# Upgrade tox & pip or libhtml5 won't install.
RUN pip install -U pip 
RUN pip install -U tox
