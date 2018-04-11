FROM ruby:2.3
RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs
RUN mkdir /app
WORKDIR /app

ADD Gemfile . 
ADD Gemfile.lock .
RUN bundle install
COPY . .

EXPOSE 3000
CMD ["rails", "server", "-p", "3000"]
