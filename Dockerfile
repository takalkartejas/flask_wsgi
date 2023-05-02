FROM python:3.7.2-stretch

WORKDIR /app
ADD . /app

RUN pip install uwsgi flask connexion[swagger-ui]
# connexion==2.14.1
#run the command to start uWSGI

CMD ["uwsgi", "app.ini"]

