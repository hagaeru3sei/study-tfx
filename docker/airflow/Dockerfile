FROM ubuntu:18.04

RUN apt-get update
RUN apt-get install -y python3-pip python3-dev build-essential
RUN apt-get install -y iproute2 iputils-ping net-tools libssl-dev mysql-client libmysqlclient-dev

RUN python3 -m pip install --upgrade pip
RUN python3 -m pip install --upgrade setuptools
RUN python3 -m pip install tensorflow==2.0.0
RUN python3 -m pip install apache-airflow==1.10.5
RUN python3 -m pip install tfx==0.15.0
RUN python3 -m pip install mysqlclient
RUN python3 -m pip install cryptography
RUN python3 -m pip install celery

RUN mkdir -p ~/airflow/dags
RUN mkdir -p ~/tfx/pipelines

COPY ./docker/airflow/airflow.cfg /root/airflow/
COPY ./docker/airflow/startup.sh /root/airflow/
COPY ./docker/airflow/wait-for-mysql.sh /tmp/

COPY ./cifar10/cifar10_pipeline_beam.py /root/airflow/dags/

