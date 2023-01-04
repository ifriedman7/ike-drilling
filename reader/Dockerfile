FROM centos:centos7.9.2009
MAINTAINER The CentOS Project <cloud-ops@centos.org
#Reader container#build from ike-drilling/reader context
ENV container docker

RUN [ -e /etc/yum.conf ] && sed -i '/tsflags=nodocs/d' /etc/yum.conf || true

RUN rpm -Uvh --replacepkgs https://dl.fedoraproject.org/pub/epel/epel-release-latest-7.noarch.rpm

RUN yum -y install \
           epel-release \
           git \
           netcat \
           nmap-ncat \
           && yum clean all

RUN git clone https://github.com/ifriedman7/ike-drilling.git

#COPY reader.sh .
RUN chmod +x /ike-drilling/reader/reader.sh
RUN export PATH="/ike-drilling:$PATH"
EXPOSE 3000
# Set default command
#ENTRYPOINT [ "reader.sh" ]
CMD [ "/ike-drilling/reader/reader.sh" ]


