FROM python:3.8

COPY requirements.txt /opt/pip/requirements.txt
RUN pip install -r /opt/pip/requirements.txt

ADD . /app/
WORKDIR /app/

ENTRYPOINT celery -A tasks worker --loglevel=DEBUG
