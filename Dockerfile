FROM python:3
LABEL author="Laxmi Sarki"
WORKDIR /app
COPY ./requirements.txt requirements.txt
RUN pip install -r requirements.txt
COPY . .
CMD ["flask","run"]
