FROM ubuntu:20.04

RUN apt-get update && apt-get install -y \
  openvpn \
  iptables \
  socat \
  curl \
  && rm -rf /var/lib/apt/lists/*

ADD ./bin /usr/local/sbin
VOLUME /etc/openvpn
EXPOSE 443/tcp 1194/udp 8080/tcp

CMD run
