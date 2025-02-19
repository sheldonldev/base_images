FROM nvidia/cuda:12.4.1-cudnn-runtime-ubuntu22.04

# Set the timezone to UTC
ENV TZ=Etc/UTC
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

# Install tzdata and other necessary packages
RUN apt-get update && \
    DEBIAN_FRONTEND=noninteractive apt-get install -y tzdata && \
    apt-get clean && rm -rf /var/lib/apt/lists/*

RUN apt-get update -y \
    && apt-get upgrade -y \
    && apt-get -y install build-essential \
        zlib1g-dev \
        libncurses5-dev \
        libgdbm-dev \ 
        libnss3-dev \
        libssl-dev \
        libreadline-dev \
        libffi-dev \
        libsqlite3-dev \
        libbz2-dev \
        wget \
    && export DEBIAN_FRONTEND=noninteractive \
    && apt-get purge -y imagemagick imagemagick-6-common 

RUN cd /usr/src \
    && wget https://www.python.org/ftp/python/3.12.8/Python-3.12.8.tgz \
    && tar -xzf Python-3.12.8.tgz \
    && cd Python-3.12.8 \
    && ./configure --enable-optimizations \
    && make altinstall

RUN update-alternatives --install /usr/bin/python python /usr/local/bin/python3.12 1

COPY requirements.txt /requirements.txt
RUN python3.12 -m pip install -r requirements.txt --no-cache-dir

RUN apt-get update -y && apt-get upgrade -y
RUN apt-get install -y libmagic1
RUN apt-get clean && rm -rf /var/lib/apt/lists/*
