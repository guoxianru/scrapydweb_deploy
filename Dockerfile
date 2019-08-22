FROM python:3.6
ADD . /code
WORKDIR /code
EXPOSE 5000
RUN pip3 install -r requirements.txt
RUN mkdir /srv/scrapy_project
COPY ./scrapydweb_settings_v10.py /code/scrapydweb_settings_v10.py
CMD scrapydweb