FROM python:3.9-slim

RUN apt-get update \
    && apt-get install -y gcc \
    && apt-get clean

RUN pip install \
    micloud==0.5 \
    python-miio==0.5.12

ENTRYPOINT miiocli

