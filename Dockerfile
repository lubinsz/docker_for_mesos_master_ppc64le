FROM powerkvm/dumb-init-ppc64le 
MAINTAINER Lu Bin <lblulb@cn.ibm.com>

RUN yum -y install mesos python-mesos 

CMD ["/usr/sbin/mesos-master"]

ENV MESOS_WORK_DIR /tmp/mesos

VOLUME /tmp/mesos

COPY entrypoint.sh /

ENTRYPOINT ["/usr/bin/dumb-init", "/entrypoint.sh"] 
