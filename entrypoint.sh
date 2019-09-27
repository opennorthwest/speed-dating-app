#!/bin/sh


set +e 
# Clear out pid files from previous runs
rm tmp/pids/server.pid

bundle exec rails server -p 3000 -b '0.0.0.0'
