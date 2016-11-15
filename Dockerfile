FROM ubuntu:14.04
MAINTAINER Leticia Santiago

RUN apt-get update
RUN apt-get install python-pip git unzip -y 
ADD /CoAPthon.tar.gz /opt/
RUN chmod 755 /opt/CoAPthon/coapserver.py 

EXPOSE 5683

CMD ["/opt/CoAPthon/coapserver.py","-i", "0.0.0.0", "-p", "5683"]
