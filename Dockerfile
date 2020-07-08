FROM isaackuang/centos-base:7

RUN wget https://bintray.com/rundeck/rundeck-rpm/rpm -O /etc/yum.repos.d/bintray.repo && \
    yum install -y java-11-openjdk rundeck-cli

ENV JAVA_HOME /usr/lib/jvm/java-11-openjdk-11.0.7.10-4.el7_8.x86_64

WORKDIR /data

ENTRYPOINT rd