FROM ruby:2.4

RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs
RUN mkdir -p  /var/www/tasknight

WORKDIR /var/www/tasknight

ADD Gemfile /var/www/tasknight/Gemfile

RUN bundle install

ADD . /var/www/tasknight
