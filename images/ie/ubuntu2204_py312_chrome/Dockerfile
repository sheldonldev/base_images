FROM sheldonlee/ubuntu2204_py312:latest

RUN apt-get update -y && apt-get upgrade -y
RUN apt-get install -y curl
RUN curl -sSL https://dl.google.com/linux/linux_signing_key.pub | apt-key add - \
    && echo "deb [arch=amd64] http://dl.google.com/linux/chrome/deb/ stable main" > /etc/apt/sources.list.d/google-chrome.list
RUN apt-get update -y && apt-get upgrade -y 
RUN apt-get install -y google-chrome-stable
RUN apt-get clean && rm -rf /var/lib/apt/lists/*
