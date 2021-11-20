FROM testcafe/testcafe:latest

ADD smoke.test.js .
ADD package.json .
ADD testcafe.json .

ENV SELENIUM_SERVER=http://selenium-hub:4444/wd/hub

USER root
RUN npm install

ENTRYPOINT npm test
