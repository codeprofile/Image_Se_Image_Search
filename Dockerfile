FROM python:3.8
LABEL author="Laxmi Sarki"
WORKDIR /app
COPY ./requirements.txt requirements.txt
RUN pip install -r requirements.txt
COPY . .
ENTRYPOINT ["python3"]
CMD ["app.py"]