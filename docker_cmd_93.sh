img="tensorflow/tensorflow:2.0.1-gpu-py3"
#img="padim:0.1"

docker run --privileged=true   --workdir /git --name "athena"  -e DISPLAY --ipc=host -d --rm  -p 6603:4452  \
-v /raid/git/athena:/git/athena \
 -v /raid/git/datasets/TIMIT:/git/TIMIT \
 $img sleep infinity

docker exec -it athena /bin/bash

pip list  |grep "tensorflow"