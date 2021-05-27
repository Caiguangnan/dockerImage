第一步：制作make镜像：

```shell
# 构建镜像
docker build --no-cache -t python3.8 -f Dockerfile-make .
# 开启容器
docker container run python3.8 /bin/bash
# 开启另一个终端
# 查看容器ID
docker ps 
# 将已编译python，拷贝到本地
docker cp [容器ID]:/usr/local/python3 ./python3_lib
```

第二步：slim镜像：

```shell
docker build --no-cache -t tiger108/python:3.8 -f Dockerfile-slim .
```

[Python-3.8.1.tgz下载URL](https://www.python.org/ftp/python/3.8.1/Python-3.8.1.tgz)

[Centos-7.repo下载URL](http://mirrors.aliyun.com/repo/Centos-7.repo)

