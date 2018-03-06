FROM node:8.9.1

WORKDIR /usr/src/app

RUN npm install create-react-app -g

# Bundle app source
COPY . .

RUN chmod 777 run.sh

EXPOSE 8080
CMD [ "sh", "run.sh" ]