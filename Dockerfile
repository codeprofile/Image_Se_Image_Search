FROM ubuntu:latest
RUN apt-get update -y
RUN apt-get install -y python-pip python-dev build-essential
LABEL author="Laxmi Sarki"
WORKDIR /app
COPY ./requirements.txt requirements.txt
RUN pip install -r requirements.txt
COPY . .
ENTRYPOINT ["python3"]
CMD ["app.py"]