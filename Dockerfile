FROM python:3.10

RUN apt update || apt upgrade || apk add bash

RUN mkdir /post

WORKDIR /post

COPY ./commands ./commands
COPY ./post ./post
COPY ./users ./users
COPY ./manage.py ./manage.py
COPY ./requirements.txt ./requirements.txt

RUN python -m pip install --upgrade pip
RUN pip install -r requirements.txt

CMD ["bash"]