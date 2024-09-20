FROM ubuntu:22.04

# Install dependencies for building Python
RUN apt-get update -y \
    && apt-get upgrade -y \
    && apt-get install -y build-essential \
    apt-utils \
    zlib1g-dev \
    libncurses5-dev \
    libgdbm-dev \
    libnss3-dev \
    libssl-dev \
    libreadline-dev \
    libffi-dev \
    libsqlite3-dev \
    libbz2-dev \
    liblzma-dev \
    wget \
    && apt-get purge -y imagemagick imagemagick-6-common

# Download and install Python 3.12
RUN cd /usr/src \
    && wget https://www.python.org/ftp/python/3.12.0/Python-3.12.0.tgz \
    && tar -xzf Python-3.12.0.tgz \
    && cd Python-3.12.0 \
    && ./configure --enable-optimizations --with-lzma \
    && make altinstall

# Update alternatives to use Python 3.12
RUN update-alternatives --install /usr/bin/python python /usr/local/bin/python3.12 1

RUN apt-get clean && rm -rf /var/lib/apt/lists/*
