FROM python:3.12.4-slim

COPY . .

RUN pip3 install -U -r requirements.txt
CMD python3 main.py
