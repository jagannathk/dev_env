From test_step03


RUN mkdir /var/run/sshd

RUN useradd -m -U jkerai -s /bin/bash
#RUN useradd -d /home/jkerai -U jkerai -s /bin/bash
RUN echo "root:sk8free" | chpasswd
RUN echo "jkerai:sk8free" | chpasswd

RUN mkdir -p /home/jkerai/.ssh
ADD id_rsa.pub /home/jkerai/.ssh/authorized_keys
#RUN chown jkerai:jkerai /home/jkerai/.ssh
RUN chmod 0600 /home/jkerai/.ssh/authorized_keys && chown jkerai:jkerai /home/jkerai/.ssh/authorized_keys
RUN ls -la /home/jkerai/.ssh/authorized_keys

RUN sed -i 's/#SyslogFacility AUTH/SyslogFacility AUTH/' /etc/ssh/sshd_config
RUN sed -i 's/#LogLevel INFO/LogLevel INFO/' /etc/ssh/sshd_config

RUN sed -i 's/#PermitRootLogin prohibit-password/PermitRootLogin yes/' /etc/ssh/sshd_config

ENV NOTVISIBLE "in users profile"
RUN echo "export VISIBLE=now" >> /etc/profile

#COPY entrypoint.sh /usr/local/bin/
#RUN chmod +x /usr/local/bin/entrypoint.sh

EXPOSE 22
RUN ssh-keygen -A
RUN ls -la /home/jkerai/.ssh/authorized_keys

#ENTRYPOINT ["entrypoint.sh"]
CMD ["/usr/sbin/sshd", "-D"]

