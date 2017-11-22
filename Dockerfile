FROM ruby:latest
RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs
RUN mkdir -p /usr/share/nginx/www
WORKDIR /usr/share/nginx/www
ADD Gemfile /usr/share/nginx/www/Gemfile
ADD Gemfile.lock /usr/share/nginx/www/Gemfile.lock
RUN bundle install

ADD . .

RUN apt-get install -y nginx zip curl
RUN echo "daemon off;" >> /etc/nginx/nginx.conf

EXPOSE 80

CMD ["/usr/sbin/nginx", "-c", "/etc/nginx/nginx.conf"]