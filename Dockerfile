FROM ubuntu:trusty
MAINTAINER Charlie Lewis <clewis@iqt.org>

RUN apt-get update && apt-get install -y git nodejs npm
RUN ln -s /usr/bin/nodejs /usr/bin/node
RUN git clone https://github.com/yaronn/blessed-contrib.git
WORKDIR /blessed-contrib
RUN npm install

CMD ["node", "./examples/dashboard.js"]
