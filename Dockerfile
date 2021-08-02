FROM alpine:3.14

RUN apk update
RUN apk add ruby
RUN apk add build-base libxml2-dev libxslt-dev ruby-dev
RUN gem install bundler:2.1.4

COPY Gemfile Gemfile.lock .

RUN bundle install

COPY . .
