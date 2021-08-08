FROM strapi/base

WORKDIR /srv/app
VOLUME /srv/app

EXPOSE 1337

COPY . .

RUN chmod a+x /srv/app/run.sh

CMD ["/srv/app/run.sh"]