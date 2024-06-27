FROM python:3.10.8-slim-buster

RUN apt update && apt upgrade -y
RUN apt install git -y
COPY requirements.txt /requirements.txt

RUN cd /
RUN pip3 install -U pip && pip3 install -U -r requirements.txt
RUN mkdir /RUDRA-FILTER-BOT
WORKDIR /RUDRA-FILTER-BOT
COPY . /RUDRA-FILTER-BOT
CMD ["python", "bot.py"]
