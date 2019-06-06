FROM ruby:2.5.5
LABEL maintainer "e-fujikawa <efg.river@gmail.com>" \
      readme="https://github.com/Eigo-Mt-Fuji/ruby-rails-labo/blob/master/README.md" \
      description="Dockerfile of ruby on rails laboratory app." 

ENV LANG C.UTF-8
ENV LC_ALL $LANG
WORKDIR /tmp

COPY Gemfile .

RUN apt-get update
RUN apt-get install -y mysql-client nodejs jq
RUN bundle -v
RUN bundle install

EXPOSE 3000