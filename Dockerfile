FROM python:3.6.5-slim
RUN apt-get update -y
RUN apt-get install -y python-pip
#RUN apt-get install -y python-dev build-essential
COPY . /code
WORKDIR /code
RUN pip install -r requirements.txt
#EXPOSE 8888
#ENTRYPOINT ["python"]
CMD ["jupyter", "notebook", "--ip=0.0.0.0", "--port=7000", "--allow-root"]
