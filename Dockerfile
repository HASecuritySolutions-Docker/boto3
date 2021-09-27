FROM python:3-slim-buster
MAINTAINER Justin Henderson justin@hasecuritysolutions.com

RUN pip install boto3 \
    && mkdir -p /scripts \
    && useradd -ms /bin/bash python \
    && chown -R python:python /scripts
USER python
STOPSIGNAL SIGTERM

CMD python /scripts/app.py
