FROM spark:latest

COPY pom.xml README.md
COPY target/small-1.0-SNAPSHOT.jar /small.jar

CMD /opt/spark/bin/spark-submit \
    --master "local[*]" \
    --class SimpleApp
    /small.jar
