FROM python:3.7-alpine

RUN apk add --update bash

WORKDIR /home

COPY ./data/ /home/data

RUN mkdir -p /home/data

WORKDIR /home/data

CMD ["python", "docker.py"]