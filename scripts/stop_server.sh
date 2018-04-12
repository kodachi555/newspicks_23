#!/bin/bash
su -l deploy -c 'kill -KILL -s QUIT `cat /var/www/sample-app/tmp/pids/unicorn.pid`'
