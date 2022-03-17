FROM python:3.6

# Creating Application Source Code Directory
RUN mkdir -p /radio_record/src

WORKDIR /radio_record/src

COPY requirements.txt /radio_record/src
COPY settings.ini /radio_record/src
RUN pip install --no-cache-dir -r requirements.txt

COPY . .

# ENV APP_ENV development

# RUN mkdir -p /radio_record/src/recordings

VOLUME ["/app-data"]

CMD ["./radiorec.py", "record","dlf", "5","-s","."]
# CMD [ "./radiorec.py", "list","-s","."]