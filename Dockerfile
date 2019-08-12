FROM centos:6

MAINTAINER jackchow "jack_chow621@sina.com"

RUN yum -y update && \
wget https://github.com/Qihoo360/pika/releases/download/v2.3.6/pika-linux-x86_64-v2.3.6.tar.bz2
ADD pika-linux-x86_64-v2.3.6.tar.bz2 /opt
RUN mv /opt/pika-linux-x86_64-v2.3.6 /opt/pika-v2.3.6
ENV PIKA  /opt/pika-v2.3.6
ENV PATH ${PIKA}/bin:${PATH}

ENV TZ Asia/Shanghai

WORKDIR ${PIKA}


EXPOSE 9221
