#!/bin/bash
rm -rf ./tmp/pids/server.pid
until mysqladmin ping -h $1 -P$2 -u$3 -p$4 --silent; do
  echo "waiting for mysql..."
  sleep 1s
done
echo "success to connect mysql"

bundle exec rails assets:precompile
bundle exec rails db:migrate
bundle exec rails db:seed
bundle exec rails dbconsole -e $RAILS_ENV -p < docker/load-data.sql
bundle exec rails test

if [ "$DEBUG" = "1" ] ; then
  # debug mode (1234, 26162 is port number in container)
  START_RAILS_COMMAND="rdebug-ide -d --host 0.0.0.0 --port 1234 --dispatcher-port 26162 -- bin/rails s -b 0.0.0.0 -p 3000"
else
  # normal mode
  START_RAILS_COMMAND="puma -p 3000 -C config/puma.rb"
fi
bundle exec $START_RAILS_COMMAND
