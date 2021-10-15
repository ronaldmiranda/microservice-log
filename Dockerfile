FROM python:3.6-alpine

WORKDIR /usr/src/app
RUN apk add --no-cache build-base
COPY ./src/requirements.txt .
RUN pip3 install -r requirements.txt

COPY ./src/main.py .

ENTRYPOINT [ "python3" ]
CMD [ "-u", "main.py" ]
