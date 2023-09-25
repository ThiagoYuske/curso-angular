FROM node:16-alpine AS build

WORKDIR /app

RUN npm install -g @angular/cli x
COPY package*.json ./

# ENV PATH /usr/src/app/node_modules/.bin:$PATH

COPY . .

RUN npm install

RUN npm run build

# # RUN npm run build --configuration env_name

EXPOSE 4200

# # CMD ["npm", "start"]
 
CMD ["ng", "serve", "--host", "0.0.0.0"]
