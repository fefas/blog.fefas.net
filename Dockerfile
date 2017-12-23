FROM ruby:2.4 AS jekyll

WORKDIR /usr/src

COPY ./jekyll /usr/src
COPY ./.git /usr/src/.git

RUN bundle install && \
    jekyll build --destination _site

FROM nginx:1.13.7-alpine

COPY --from=jekyll /usr/src/_site /usr/share/nginx/html

COPY nginx.conf /etc/nginx/conf.d/default.conf

EXPOSE 80
