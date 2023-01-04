FROM centos:centos7.9.2009
#Writer container#build from ike-drilling/writer context
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
COPY writer.sh .

EXPOSE 37529
# Set default command
#ENTRYPOINT [ "" ]
CMD [ "writer.sh" ]

