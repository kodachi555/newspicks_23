#!/bin/bash
source /home/ec2-user/.bash_profile
cd /var/www/newspicks_23 && RAILS_SERVE_STATIC_FILES=1 bundle exec unicorn_rails -E production -c config/unicorn.rb
