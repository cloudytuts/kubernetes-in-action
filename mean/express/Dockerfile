# Install build dependancies and build Express app
FROM node:14.8.0-stretch AS build
COPY ./src .
RUN npm install \
    && npm run-script test \
    ** npm run-script build

# Create final image and use PM2 to manage Express app
FROM node:14.8.0-slim AS final
RUN mkdir /app
WORKDIR /app
COPY build/ .
RUN npm install -g pm2
CMD ["pm2", "start", "server.js"]