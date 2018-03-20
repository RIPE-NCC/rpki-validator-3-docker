FROM centos/systemd

RUN yum -y install https://ftp.ripe.net/tools/rpki/validator3/beta/centos7/archive/rpki-validator-3.0-215.noarch.rpm
RUN systemctl enable rpki-validator-3.service

EXPOSE 8080

CMD ["/usr/sbin/init"]
