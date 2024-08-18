FROM ubuntu:24.04

RUN apt-get update && apt-get install avahi-utils python3-pip python3-venv -y

RUN python3 -m venv /opt/pyess-venv
RUN /opt/pyess-venv/bin/pip install setuptools
RUN /opt/pyess-venv/bin/pip install pyess

COPY ./essmqtt.conf /etc/essmqtt.conf
COPY ./entrypoint.sh /usr/local/bin

ENTRYPOINT ["/usr/local/bin/entrypoint.sh"]

CMD ["essmqtt"]