FROM hub.c.163.com/library/centos

MAINTAINER crazyxxl 1228785231@qq.com

ENV project_base_url /root/project

WORKDIR $project_base_url/backend

RUN yum install -y jdk

COPY ./target/project.jar $project_base_url/backend/

EXPOSE  9527

ENTRYPOINT java -jar $project_base_url/backend/project.jar

