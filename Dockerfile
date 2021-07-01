FROM registry.access.redhat.com/ubi8/openjdk-8
WORKDIR /root
ADD app-tx.jar app-tx.jar
ADD app-rx.jar app-rx.jar
EXPOSE 34000-35000
CMD export LD_LIBRARY_PATH=/opt/cllm ;  sleep 60; java -jar app-rx.jar 
