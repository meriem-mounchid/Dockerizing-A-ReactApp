FROM node:17-alpine

RUN npm install -g nodemon

WORKDIR /app

COPY package.json .

RUN npm install

COPY . .

EXPOSE 4000

CMD ["npm", "run", "dev"]

# Command: docker build -t myapp .
# To see it: docker images
# Create Container: docker run --name myappc -dp 4000:4000 myapp
# Start it: docker start NAME
# docker run --name myappc_nodemon -dp 4000:4000 --rm -v /Users/mmounchi/Desktop/Test/crash-course/api:/app -v /app/node_modules myapp:nodemon
