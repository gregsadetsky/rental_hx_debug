FROM python:3.12.1
RUN apt-get update && apt-get install -y sqlite3
# docker will not re-pip install if requirements.txt doesn't change
WORKDIR /code
ADD ./requirements.txt /code/requirements.txt
RUN pip install -r requirements.txt

RUN touch /sqlitedata/database.db

ADD . /code

CMD ["python", "server.py"]
