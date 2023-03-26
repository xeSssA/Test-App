FROM ruby:3.0.1

RUN apt-get update -qq

ENV APP_PATH=/opt/app
WORKDIR $APP_PATH

COPY Gemfile* $APP_PATH/
RUN bundle install

COPY . .

EXPOSE 3000

CMD ["rails", "server", "-b", "0.0.0.0"]
