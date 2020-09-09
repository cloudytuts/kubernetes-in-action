# Build stage for compiling the React app
FROM node as build
RUN mkdir /app
COPY . /app
WORKDIR /app
RUN npm install \
    && npm run-script build \
    && ls -l

# Final stage for creating the final Docker image
FROM nginx:1.17 as final
COPY --from=build /app/build/ /var/www/html