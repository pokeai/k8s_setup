# spark-2.4.4-bin-hadoop2.7/bin/spark-submit --class SimpleApp --master local[*] target/small-1.0-SNAPSHOT.jar
# spark-submit --class SimpleApp --master local[*] target/small-1.0-SNAPSHOT.jar
eval $(minikube docker-env)


spark-submit --class SimpleApp \
--master "k8s://https://192.168.39.146:8443" \
--deploy-mode cluster \
--conf spark.kubernetes.container.image=cpchung:latest \
--conf spark.kubernetes.image.pullPolicy=IfNotPresent \
--conf spark.executor.instances=1 \
--conf spark.kubernetes.authenticate.driver.serviceAccountName=default \
local:///small.jar

#target/small-1.0-SNAPSHOT.jar
# --conf spark.kubernetes.container.image=localhost:5000/cpchung:latest \

# spark-2.4.4-bin-hadoop2.7/bin/spark-submit --class SimpleApp \
# --master "k8s://https://192.168.99.101:8443" \
# --deploy-mode cluster \
# --conf spark.kubernetes.container.image=bonbuild:newtag \
# --conf spark.kubernetes.image.pullPolicy=IfNotPresent \
# --conf spark.executor.instances=5 \
# target/small-1.0-SNAPSHOT.jar

# build docker base image
# cd spark-2.4.4-bin-hadoop2.7
# bin/docker-image-tool.sh -t bon build

# docker images
# docker build -t repositoryName:optionalTag .
# docker build --help

# create/run container from image
# docker run <image_id>
# docker run <repositoryName>:<tagName>

# kubectl delete pods


# kubectl cluster-info

#kubectl delete pods --all

#kubectl logs simpleapp-1580782281051-driver

#docker image prune --all --filter until=48h

# kubectl create serviceaccount spark

#minikube docker-env

#minikube start --kubernetes-version v1.12.0

#https://stackoverflow.com/questions/47973570/kubernetes-log-user-systemserviceaccountdefaultdefault-cannot-get-services
#https://github.com/fabric8io/fabric8/issues/6840