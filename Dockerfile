FROM ubuntu:18.04

# install prerequisites
RUN apt update && apt install -y ruby2.5

COPY . /app
WORKDIR /app

RUN gem install bundler

RUN bundle

CMD ruby app.rb