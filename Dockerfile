# pull official base image
FROM node:13.12.0-alpine

#set working directory
WORKDIR /app

#add /app/node_modules/.bin $PATH
ENV PATH /app/node_modules/.bin:$PATH

# install app dependecies
COPY package.json ./
COPY package-lock.json ./
RUN npm install

# add app
COPY . ./

EXPOSE 1234

# start app
CMD ["npm", "start"]
