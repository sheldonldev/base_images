FROM sheldonlee/py312_chrome:latest

RUN apt-get update -y && apt-get upgrade -y
RUN apt-get install -y libreoffice
RUN apt-get clean && rm -rf /var/lib/apt/lists/*
