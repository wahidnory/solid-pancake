FROM python:3.5

RUN apt-get install && apt-get update -y
RUN pip install --upgrade pip

# ADD ./project /usr/app

WORKDIR /usr/app/
COPY requirements.txt /usr/app/
RUN pip install -r requirements.txt