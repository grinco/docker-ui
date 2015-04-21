FROM debian:7
MAINTAINER Charlie Drage <charlie@cloudatcost.com>

RUN apt-get update && apt-get install -y build-essential ruby ruby-dev openssl ca-certificates git

RUN gem install bundler

RUN git clone https://github.com/cloudatcost/ui

WORKDIR ui
RUN bundle install
EXPOSE 8080 80
CMD bundle exec ruby app.rb
