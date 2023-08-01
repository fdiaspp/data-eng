FROM ubuntu:20.04 AS base

WORKDIR /content

ENV SPARK_VERSION 3.3.2
ENV HADOOP_VERSION 3

RUN apt-get update &&\
    apt-get install wget openjdk-8-jdk-headless python3-pip git -qq > /dev/null &&\
    wget -q https://archive.apache.org/dist/spark/spark-${SPARK_VERSION}/spark-${SPARK_VERSION}-bin-hadoop${HADOOP_VERSION}.tgz &&\
    tar xf spark-${SPARK_VERSION}-bin-hadoop${HADOOP_VERSION}.tgz &&\
    pip install -q findspark

ENV JAVA_HOME /usr/lib/jvm/java-8-openjdk-amd64
ENV SPARK_HOME /content/spark-${SPARK_VERSION}-bin-hadoop${HADOOP_VERSION}
ENV PATH $PATH:${SPARK_HOME}/bin

FROM base
ARG REQUIREMENTS

RUN pip install ${REQUIREMENTS}
