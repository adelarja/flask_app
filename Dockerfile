# Base python docker image
FROM python:3.8.12-bullseye

# Import Code
ADD . /code

# Changing the directory
WORKDIR /code

# Environment variables
ENV FLASK_APP=run.py
ENV FLASK_CONFIG=development
ENV FLASK_RUN_PORT=8000
ENV FLASK_RUN_HOST=0.0.0.0

# INstalling lib
RUN pip install -r requirements.txt

# Exposing the port
EXPOSE 8000

# Running flask app
CMD ["flask", "run"]