FROM python:slim-buster

COPY static /static
COPY templates /templates

COPY app.py /app.py
COPY db.py /db.py
COPY requirements.txt /requirements.txt

RUN pip install -r requirements.txt

ENTRYPOINT [ "python" ]
CMD [ "app.py" ]