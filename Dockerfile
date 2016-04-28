FROM resin/rpi-raspbian:wheezy
RUN apt-get update -q
RUN apt-get install -qy openvpn iptables socat curl openssl
ADD ./bin /usr/local/sbin
VOLUME /etc/openvpn
EXPOSE 443/tcp 1194/udp 8080/tcp
CMD run
