FROM ruby:2.4 AS jekyll

WORKDIR /usr/src

COPY ./.git /usr/src/.git
COPY ./jekyll /usr/src

RUN bundle install && \
    jekyll build --destination _site

FROM nginx:1.13

COPY --from=jekyll /usr/src/_site /usr/share/nginx/html

EXPOSE 80
