FROM local/c-systemd
RUN yum -y install openssh-server passwd sudo net-tools jq; yum clean all; systemctl enable sshd
RUN useradd -rm -d /home/ansible -s /bin/bash -g root -G wheel -u 1001 ansible
RUN echo 'ansible:ansible' | chpasswd 
CMD ["/usr/sbin/init"]
USER ansible
WORKDIR /home/ansible
USER root
RUN rm -rf /run/nologin
EXPOSE 22