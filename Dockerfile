FROM ruby:2.2.10
RUN mkdir /home/app
WORKDIR /home/app
ADD . /home/app

RUN bundle install
CMD bundle exec puma config.ru -p 8080