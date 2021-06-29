FROM strapi/base

COPY ./package.json /tmp

RUN cd /tmp && npm install

WORKDIR /srv/app

RUN cp -R /tmp/node_modules .

COPY . .

RUN npm run build

EXPOSE 1337

CMD ["npm", "start"]
