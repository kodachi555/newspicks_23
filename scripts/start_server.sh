#!/bin/bash
source /home/ec2-user/.bash_profile
cd /var/www/newspicks_23 && sudo -u ec2-user RAILS_SERVE_STATIC_FILES=1 bundle exec unicorn_rails -D -E production -c config/unicorn.rb
