FROM node:16-alpine
EXPOSE 3000
WORKDIR /opt/tekton-lab-app
COPY package.json .
RUN npm install --only=prod
COPY *.js ./
RUN npm cache verify
CMD npm start
