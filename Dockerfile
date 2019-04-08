FROM centos/systemd

RUN yum -y install https://ftp.ripe.net/tools/rpki/validator3/prod/centos7/repo/rpki-validator-3.0-407.noarch.rpm; 
RUN yum clean all; systemctl enable rpki-validator-3.service

EXPOSE 8080

CMD ["/usr/sbin/init"]
