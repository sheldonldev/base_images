FROM python:3.12-slim

RUN apt-get update -y && apt-get upgrade -y
RUN apt-get install -y libmagic1
RUN apt-get clean && rm -rf /var/lib/apt/lists/*
