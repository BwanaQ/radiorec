FROM python:3.6

# Creating Application Source Code Directory
RUN mkdir -p /Recordings

# WORKDIR 

COPY requirements.txt .
COPY settings.ini .
RUN pip install --no-cache-dir -r requirements.txt

COPY . .

# ENV APP_ENV development

# RUN mkdir -p /radio_record/src/recordings

# VOLUME ["/app-data"]

CMD ["./radiorec.py", "record","dlf", "5","-s","."]
# docker run -d  -v $(pwd)/Recordings/:/root/Recordings/ radiorec