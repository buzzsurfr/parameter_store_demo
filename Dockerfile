FROM python:2.7-alpine3.7

COPY app.py requirements.txt /app/
WORKDIR /app

RUN pip install -r requirements.txt

ENTRYPOINT ["python"]
CMD ["app.py"]

