#pull a node image from docker hub
FROM node:latest 

#set the working dir to /app
WORKDIR /app 

#copy package.json to the container
COPY package.json package.json 

#install package.json modules in container
RUN npm install 

#copy everything to container /app
COPY . .

#expose port 3000 to mount it to another port in local machine 
EXPOSE 3000
EXPOSE 9229

#install nodemon for changes on the fly
RUN npm install -g nodemon

#start server inside container
CMD [ "nodemon", "--nolazy", "--inspect=0.0.0.0:9229", "index.js" ]