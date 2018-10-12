FROM ubuntu:16.04

# install prerequisites
RUN apt update && apt install -y python python-pip

COPY . /app
WORKDIR /app
RUN pip install -r requirements.txt
CMD python /app/app.py
