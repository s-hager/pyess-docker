FROM python:3.11-alpine

RUN pip install pyess

COPY ./essmqtt.conf /etc/essmqtt.conf
COPY ./entrypoint.sh /usr/local/bin

ENTRYPOINT ["/usr/local/bin/entrypoint.sh"]

CMD ["essmqtt"]