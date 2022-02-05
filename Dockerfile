FROM python:3.10

RUN apt update || apt upgrade || apk add bash

RUN mkdir /prime

WORKDIR /prime

COPY ./admins ./admins
COPY ./commands ./commands
COPY ./prime ./prime
COPY ./templates ./templates
COPY ./users ./users
COPY ./config.py ./config.py
COPY ./manage.py ./manage.py
COPY ./requirements.txt ./requirements.txt

RUN python -m pip install --upgrade pip
RUN pip install -r requirements.txt

CMD ["bash"]