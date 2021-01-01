FROM ruby:2.3.6

WORKDIR /usr/local/site
ENV JEKYLL_DESTINATION /var/www

COPY ./Gemfile* /usr/local/site/
RUN bundle install
COPY ./ /usr/local/site/

CMD ["./bin/jekyll-serve"]

EXPOSE 80
