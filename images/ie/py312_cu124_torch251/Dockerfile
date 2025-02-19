FROM nvidia/cuda:12.4.1-cudnn-runtime-ubuntu22.04

# Set the timezone to UTC
ENV TZ=Etc/UTC
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

# Install tzdata and other necessary packages
RUN apt-get update && \
    DEBIAN_FRONTEND=noninteractive apt-get install -y tzdata && \
    apt-get clean && rm -rf /var/lib/apt/lists/*

# # Install Python 3.12 and necessary packages
# RUN apt-get update && \
#     apt-get install -y --no-install-recommends \
#     software-properties-common && \
#     add-apt-repository ppa:deadsnakes/ppa && \
#     apt-get update && \
#     apt-get install -y --no-install-recommends \
#     python3.12 \
#     python3-distutils \
#     python3-pip && \
#     rm -rf /var/lib/apt/lists/*

# # Ensure pip points to Python 3.12
# RUN update-alternatives --install /usr/bin/python3 python3 /usr/bin/python3.12 1 && \
#     python3 -m pip install --upgrade pip

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
