FROM sheldonlee/ubuntu2204_py312_cu121_torch230:v1.0.0

RUN apt-get update -y && apt-get upgrade -y
RUN apt-get install -y libreoffice
RUN apt-get clean && rm -rf /var/lib/apt/lists/*
