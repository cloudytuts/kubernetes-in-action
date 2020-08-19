FROM node as build
COPY ./src .
RUN npm build

FROM nginx as final
COPY --from=build ./output/index.html /var/www/html
COPY --from=build ./output/myapp.js /var/www/html