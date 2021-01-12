FROM python:2.7
MAINTAINER asv
RUN apt-get update -y
RUN apt-get install -y python-pip
ADD . /code
WORKDIR /code
RUN pip install -r requirements.txt
CMD python pyflaskapp.py
EXPOSE 5000
