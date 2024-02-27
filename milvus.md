## Source wget https://github.com/milvus-io/milvus/releases/download/vX.Y.Z/milvus-x.y.z-docker-compose.yml
## Releases - https://github.com/milvus-io/milvus/releases/
```
1. Install docker ce
2. Docker compose up
3. http://<IPADDRESS>:9001/
root@dev-vm:~# docker ps
CONTAINER ID   IMAGE                                      COMMAND                  CREATED        STATUS                  PORTS                                              NAMES
9ac3   milvusdb/milvus:v2.3.10                    "/tini -- milvus run…"   19 hours ago   Up 19 hours (healthy)   0.0.0.0:9091->9091/tcp, 0.0.0.0:19530->19530/tcp   milvus-standalone
8944   minio/minio:RELEASE.2023-03-20T20-16-18Z   "/usr/bin/docker-ent…"   19 hours ago   Up 19 hours (healthy)   0.0.0.0:9000-9001->9000-9001/tcp                   milvus-minio
be52cbec16f1   quay.io/coreos/etcd:v3.5.5                 "etcd -advertise-cli…"   19 hours ago   Up 19 hours (healthy)   2379-2380/tcp                              milvus-etcd
root@dev-vm:~#


```
