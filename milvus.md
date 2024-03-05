## Source wget https://github.com/milvus-io/milvus/releases/download/vX.Y.Z/milvus-x.y.z-docker-compose.yml
## Releases - https://github.com/milvus-io/milvus/releases/
## GUI for Milvus - https://github.com/zilliztech/attu
## 


## One way of installation
```
https://milvus.io/docs/install_standalone-docker.md
wget https://raw.githubusercontent.com/milvus-io/milvus/master/scripts/standalone_embed.sh
bash standalone_embed.sh start

Validation
apt install python3.10-venv
python3.10 -m venv virt_env
source virt_env/bin/activate
wget https://raw.githubusercontent.com/milvus-io/pymilvus/master/examples/hello_milvus.py
pip install numpy
pip install pymilvus
python hello_milvus.py

(milvus) root@kafka-01:~/milvus# python hello_milvus.py

=== start connecting to Milvus     ===

Does collection hello_milvus exist in Milvus: False

=== Create collection `hello_milvus` ===


=== Start inserting entities       ===

Number of entities in Milvus: 3000

=== Start Creating index IVF_FLAT  ===


=== Start loading                  ===


=== Start searching based on vector similarity ===

hit: id: 2998, distance: 0.0, entity: {'random': 0.9728033590489911}, random field: 0.9728033590489911
hit: id: 1262, distance: 0.08883658051490784, entity: {'random': 0.2978858685751561}, random field: 0.2978858685751561
hit: id: 1265, distance: 0.09590047597885132, entity: {'random': 0.3042039939240304}, random field: 0.3042039939240304
hit: id: 2999, distance: 0.0, entity: {'random': 0.02316334456872482}, random field: 0.02316334456872482
hit: id: 1580, distance: 0.05628091096878052, entity: {'random': 0.3855988746044062}, random field: 0.3855988746044062
hit: id: 2377, distance: 0.08096685260534286, entity: {'random': 0.8745922204004368}, random field: 0.8745922204004368
search latency = 0.2503s

=== Start querying with `random > 0.5` ===

query result:
-{'random': 0.6378742006852851, 'embeddings': [0.20963514, 0.39746657, 0.12019053, 0.6947492, 0.9535575, 0.5454552, 0.82360446, 0.21096309], 'pk': '0'}
search latency = 0.2230s
query pagination(limit=4):
        [{'random': 0.6378742006852851, 'pk': '0'}, {'random': 0.5763523024650556, 'pk': '100'}, {'random': 0.9425935891639464, 'pk': '1000'}, {'random': 0.7893211256191387, 'pk': '1001'}]
query pagination(offset=1, limit=3):
        [{'random': 0.5763523024650556, 'pk': '100'}, {'random': 0.9425935891639464, 'pk': '1000'}, {'random': 0.7893211256191387, 'pk': '1001'}]

=== Start hybrid searching with `random > 0.5` ===

hit: id: 2998, distance: 0.0, entity: {'random': 0.9728033590489911}, random field: 0.9728033590489911
hit: id: 747, distance: 0.14606499671936035, entity: {'random': 0.5648774800635661}, random field: 0.5648774800635661
hit: id: 2527, distance: 0.1530652642250061, entity: {'random': 0.8928974315571507}, random field: 0.8928974315571507
hit: id: 2377, distance: 0.08096685260534286, entity: {'random': 0.8745922204004368}, random field: 0.8745922204004368
hit: id: 2034, distance: 0.20354536175727844, entity: {'random': 0.5526117606328499}, random field: 0.5526117606328499
hit: id: 958, distance: 0.21908017992973328, entity: {'random': 0.6647383716417955}, random field: 0.6647383716417955
search latency = 0.1991s

=== Start deleting with expr `pk in ["0" , "1"]` ===

query before delete by expr=`pk in ["0" , "1"]` -> result:
-{'random': 0.6378742006852851, 'embeddings': [0.20963514, 0.39746657, 0.12019053, 0.6947492, 0.9535575, 0.5454552, 0.82360446, 0.21096309], 'pk': '0'}
-{'random': 0.43925103574669633, 'embeddings': [0.52323616, 0.8035404, 0.77824664, 0.80369574, 0.4914803, 0.8265614, 0.6145269, 0.80234545], 'pk': '1'}

query after delete by expr=`pk in ["0" , "1"]` -> result: []


=== Drop collection `hello_milvus` ===


```








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
