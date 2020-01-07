FROM centos:7

RUN yum -y install centos-release-openstack-train \
    && yum -y install os-net-config \
    && yum clean all
