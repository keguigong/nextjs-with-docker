FROM node:12.9.1
# ENV NODE_ENV production
WORKDIR /usr/src/app
COPY package.json /usr/src/app
COPY yarn.lock /usr/src/app
RUN npm install -g yarn && yarn install
COPY . /usr/src/app
# EXPOSE 3000
CMD yarn dev