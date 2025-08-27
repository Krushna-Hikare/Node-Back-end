FROM node:22-alpine

WORKDIR /usr/src/app

COPY package*.json ./
RUN npm install

COPY . .

# Expose your backend port
EXPOSE 8000

# Run with nodemon for hot-reload
CMD ["npx", "nodemon", "index.js"]
