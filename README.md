# README

Manage my own images on docker repos.

## 使用方法

- 运行下面脚本可以打包镜像并推送到我的 docker hub

    ```sh
    bash build_and_push.sh [目标 Dockerfile 的文件夹路径] [tag]
    ```

- 如果需要推送到私有化部署的Docker库

    ```sh
    # 先在 daemon.json 配置信任的私有化库地址，然后运行脚本
    bash build_and_push.sh [目标 Dockerfile 的文件夹路径] [tag] [目标repo]
    ```

- 创建新的 Dockerfile: 在 images 下面创建一个文件夹（以镜像名称命名）,在文件夹下创建 `Dockerfile`

## 资源

### 国内 docker hub 代理池

- <https://www.coderjia.cn/archives/dba3f94c-a021-468a-8ac6-e840f85867ea>

### docker 安装

- <https://docs.docker.com/engine/install/ubuntu/>

### docker GPU 支持

- <https://docs.nvidia.com/ai-enterprise/deployment/vmware/latest/docker.html>

### python 安装包

- <https://www.python.org/ftp/python/>

### CUDA 镜像

- <https://hub.docker.com/r/nvidia/cuda/tags>

### pytorch 版本

- <https://pytorch.org/get-started/previous-versions/>
