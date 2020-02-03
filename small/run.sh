spark-2.4.4-bin-hadoop2.7/bin/spark-submit --class SimpleApp --master local[*] target/small-1.0-SNAPSHOT.jar

spark-2.4.4-bin-hadoop2.7/bin/spark-submit --class SimpleApp \
--master "k8s://https://192.168.99.101:8443" \
--deploy-mode cluster \
--conf spark.kubernetes.container.image=bonbuild:newtag \
--conf spark.kubernetes.image.pullPolicy=IfNotPresent \
--conf spark.executor.instances=5 \
target/small-1.0-SNAPSHOT.jar

# build docker base image
cd spark-2.4.4-bin-hadoop2.7
bin/docker-image-tool.sh -t bon build

# docker images
# docker build -t repositoryName:optionalTag .
# docker build --help

# create/run container from image
docker run <image_id>
docker run <repositoryName>:<tagName>

