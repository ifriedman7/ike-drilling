FROM centos:centos7.9.2009
MAINTAINER The CentOS Project <cloud-ops@centos.org
#Reader container
ENV container docker

RUN [ -e /etc/yum.conf ] && sed -i '/tsflags=nodocs/d' /etc/yum.conf || true

RUN rpm -Uvh --replacepkgs https://dl.fedoraproject.org/pub/epel/epel-release-latest-7.noarch.rpm

RUN yum -y install \
           epel-release \
           git \
           netcat \
           nmap-ncat \
           && yum clean all

#RUN git clone https://github.com/ifriedman7/ike-drilling.git
#WORKDIR ike-drilling
COPY reader/reader.sh .

EXPOSE 3000
# Set default command
#ENTRYPOINT [ "" ]
CMD [ "reader.sh" ]

