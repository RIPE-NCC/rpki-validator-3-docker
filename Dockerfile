FROM centos/systemd

RUN yum -y install https://ftp.ripe.net/tools/rpki/validator3/rc/centos7/repo/rpki-validator-3.1-2019.06.17_12.28.32.noarch.rpm; 
RUN yum clean all; systemctl enable rpki-validator-3.service
RUN sed -i "s/server.address=localhost/server.address=0.0.0.0/g" /etc/rpki-validator-3/application.properties

EXPOSE 8080

CMD ["/usr/sbin/init"]
