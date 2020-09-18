FROM ruby:2.7.1-buster AS build
COPY . /app
WORKDIR /app
RUN bundle install \
    && jekyll build

FROM nginx:1.19.2-alpine AS final
COPY --from=build /app/_site /usr/share/nginx/html
