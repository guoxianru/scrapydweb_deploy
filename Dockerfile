FROM python:3.6
ENV DEBIAN_FRONTEND noninteractive
ENV TZ Asia/Shanghai
ADD . /srv/scrapydweb_deploy
WORKDIR /srv/scrapydweb_deploy
EXPOSE 5000

RUN mkdir /root/.pip
COPY ./pip.conf /root/.pip/pip.conf
RUN pip install --upgrade pip
RUN pip install -r requirements.txt

RUN mkdir /srv/scrapy_project
RUN mkdir /srv/logs

CMD scrapydweb