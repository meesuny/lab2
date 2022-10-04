# syntax=docker/dockerfile:1

FROM python:3.10.6-bullseye

COPY requirements.txt requirements.txt   

RUN pip install -r requirements.txt

WORKDIR /notebooks

EXPOSE 8888

CMD ["jupyter", "lab","--ip=0.0.0.0","--allow-root"]


