#!/bin/bash
su -l deploy -c 'cd /var/www/newspicks_23 && bundle exec unicorn -D -E production -c config/unicorn.rb'
