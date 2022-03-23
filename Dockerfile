FROM python:3.6
ENV STATION dlf
# Creating Application Source Code Directory
RUN mkdir -p /Recordings
RUN mkdir -p /app
WORKDIR /app

COPY requirements.txt .
COPY settings.ini .
RUN pip install --no-cache-dir -r requirements.txt

COPY . .

# ENV APP_ENV development

# RUN mkdir -p /radio_record/src/recordings

# VOLUME ["/app-data"]

CMD ./radiorec.py record ${STATION} 5 -s .

# RUN with env variable to override

# docker run -d -e STATION=dkultur -v $(pwd)/Recordings/:/root/Recordings/ radiorec