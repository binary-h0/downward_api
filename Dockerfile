FROM python:3.8.5-alpine3.12

WORKDIR /usr/src/app

COPY . .
RUN pip install --no-cache-dir -r requirements.txt && apk update && apk add --no-cache curl

CMD [ "python", "app.py" ]
