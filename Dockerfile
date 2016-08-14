FROM ubuntu:16.04 
MAINTAINER Charlie Drage <charlie@cloudatcost.com>

RUN apt-get update && apt-get install -y build-essential ruby ruby-dev openssl ca-certificates git

RUN gem install bundler

RUN git clone https://github.com/cloudatcost/ui

WORKDIR ui
RUN bundle install
EXPOSE 8080 80
ENV CAC_API_KEY YOURKEYHERE
ENV CAC_API_LOGIN example@example.com
ENV CAC_BASIC_HTTP_PASS password
ENV CAC_BASIC_HTTP_USER username
CMD bundle exec ruby app.rb
