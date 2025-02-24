FROM sheldonlee/py312:latest

RUN apt-get update -y && apt-get upgrade -y
RUN apt-get install software-properties-common -y
RUN apt-add-repository contrib non-free
RUN apt-get update
RUN apt-get install -y unzip unrar-free p7zip p7zip-full wget
RUN wget https://www.rarlab.com/rar/rarlinux-x64-5.7.1.tar.gz
RUN tar -zxvf rarlinux-x64-5.7.1.tar.gz
RUN cp -v rar/rar rar/unrar /usr/local/bin/
RUN apt-get clean && rm -rf /var/lib/apt/lists/*
