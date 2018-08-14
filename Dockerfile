FROM python:2.7

RUN pip install awscli
RUN aws configure set default.region us-east-1

COPY config.ini pull_secrets.sh /app/
WORKDIR /app

CMD ["/app/pull_secrets.sh", ";", "cat /app/config.ini"]

