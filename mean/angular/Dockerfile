# Build and test stage
FROM node:14.8.0-stretch AS build
COPY ./src .
RUN npm install \
    && npm run-script test \
    ** npm run-script build

# Final stage
FROM nginx:1.19.2-alpine AS final
COPY --from=build build/ /usr/local/nginx/html