FROM python:3.7-alpine3.14

ENV FLASK_DEBUG=1
ENV FLASK_APP app.py

WORKDIR /app

RUN apk update \
    && apk add --virtual build-deps gcc python3-dev musl-dev virtualenv \
    && apk add --no-cache mariadb-dev

COPY . /app/

RUN virtualenv venv 
RUN source /venv/bin/activate

RUN pip install --user -r requirements.txt

ENTRYPOINT [ "sh", "start.sh" ]