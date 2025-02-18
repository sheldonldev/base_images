FROM nvidia/cuda:12.4.1-cudnn-runtime-ubuntu22.04

# 安装 Python 3.12 和必要的软件包
RUN apt-get update && \
    apt-get install -y --no-install-recommends \
    software-properties-common && \
    add-apt-repository ppa:deadsnakes/ppa && \
    apt-get update && \
    apt-get install -y --no-install-recommends \
    python3.12 \
    python3.12-distutils \
    python3-pip && \
    rm -rf /var/lib/apt/lists/*

# 确保 pip 指向 Python 3.12
RUN update-alternatives --install /usr/bin/python3 python3 /usr/bin/python3.12 1 && \
    python3 -m pip install --upgrade pip

COPY requirements.txt /requirements.txt
RUN python3.12 -m pip install -r requirements.txt --no-cache-dir
