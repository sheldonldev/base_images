FROM sheldonlee/py312:latest

RUN apt-get update -y && apt-get upgrade -y
RUN apt-get install -y unzip unrar-free p7zip p7zip-full
RUN apt-get clean && rm -rf /var/lib/apt/lists/*
