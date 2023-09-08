FROM python:3.11-alpine

RUN pip install pyess

COPY . /pyess/
COPY ./essmqtt.conf /etc/essmqtt.conf

WORKDIR /pyess/

RUN pip install .

CMD ["essmqtt"]