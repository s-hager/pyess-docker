FROM python:3.8-alpine

RUN pip install pyess

COPY ./pyess /pyess/
COPY ./essmqtt.conf /etc/essmqtt.conf

WORKDIR /pyess/

RUN pip install .

CMD ["essmqtt"]