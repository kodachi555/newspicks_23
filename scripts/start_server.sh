#!/bin/bash
su -l deploy -c 'cd /var/www/sample-app && bundle exec unicorn -D -E production -c config/unicorn.rb'
