FROM ruby:2.4

WORKDIR /usr/src

COPY ./Gemfile* /usr/src/
RUN bundle install
COPY ./ /usr/src/

CMD ["jekyll", "serve", "--trace", "--watch", "--unpublished", "--port", "80", "--host", "0.0.0.0", "--config", "_config.yml,_config_dev.yml"]

EXPOSE 80
