#!/bin/bash
source /home/ec2-user/.bash_profile
su -l deploy -c 'cd /var/www/newspicks_23 && bundle exec unicorn_rails -D -E production -c config/unicorn.rb'
sudo service nginx restart
