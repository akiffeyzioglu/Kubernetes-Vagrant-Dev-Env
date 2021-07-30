FROM python:3.7-alpine3.14

ENV FLASK_DEBUG=1
ENV FLASK_APP app.py

WORKDIR /app

RUN apk update \
    && apk add --virtual build-deps gcc python3-dev musl-dev \
    && apk add --no-cache mariadb-dev

COPY . /app/

RUN pip install --user -r requirements.txt

ENTRYPOINT [ "sh", "start.sh" ]