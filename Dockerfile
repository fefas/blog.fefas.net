FROM ruby:latest AS installer

WORKDIR /usr/src

COPY ./Gemfile /usr/src/Gemfile
COPY ./Gemfile.lock /usr/src/Gemfile.lock

RUN bundle install

COPY ./.git /usr/src/.git
COPY ./_data /usr/src/_data
COPY ./_layouts /usr/src/_layouts
COPY ./_plugins /usr/src/_plugins
COPY ./_posts /usr/src/_posts
COPY ./assets /usr/src/assets
COPY ./pages /usr/src/pages

FROM installer AS developer

CMD ["bundle", "exec", "jekyll", "serve", "--port", "80", "--host", "0.0.0.0", "--future", "true"]

EXPOSE 80
