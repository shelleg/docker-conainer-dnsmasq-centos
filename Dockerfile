FROM centos
MAINTAINER hagzag@tikalk.com

ENV DEBIAN_FRONTEND noninteractive

RUN yum update -y && yum install dnsmasq -y

EXPOSE 53
EXPOSE 53/udp

CMD ["/usr/sbin/dnsmasq", "-d"]
