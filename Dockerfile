FROM node:slim

LABEL "maintainer"="andrewyalung <andrewy@axosoft.com>"
LABEL "repository"="https://github.com/andrewyalung/actions"
LABEL "version"="1.0.1"

LABEL "com.github.actions.name"="Wait for 200"
LABEL "com.github.actions.description"="Poll a URL until it returns a 200 HTTP status code."
LABEL "com.github.actions.icon"="refresh-cw"
LABEL "com.github.actions.color"="blue"

COPY . .

RUN npm install

ENTRYPOINT ["node", "/index.js"]
