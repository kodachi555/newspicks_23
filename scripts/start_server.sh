#!/bin/bash
source /home/ec2-user/.bash_profile
deploy -c 'cd /var/www/newspicks_23 && RAILS_SERVE_STATIC_FILES=1 bundle exec unicorn_rails -D -E production -c config/unicorn.rb'
