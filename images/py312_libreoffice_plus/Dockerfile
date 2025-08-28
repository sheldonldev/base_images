FROM sheldonlee/py312_libreoffice:latest

RUN apt-get update -y && apt-get upgrade -y

# 安装微软雅黑字体
RUN echo "deb http://deb.debian.org/debian bookworm contrib non-free" > /etc/apt/sources.list.d/contrib.list
RUN apt-get update && apt-get install -y --no-install-recommends ttf-mscorefonts-installer
ENV LD_LIBRARY_PATH=/usr/share/fonts:usr/local/share/fonts

# wkhtmltopdf 打印页面用, xvfb 虚拟显示, 安装字体渲染库
RUN apt-get update && apt-get install -y wkhtmltopdf xvfb libxrender1 libxext6 libfontconfig1

RUN apt-get install -y poppler-utils
RUN apt-get clean && rm -rf /var/lib/apt/lists/*