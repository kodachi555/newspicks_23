#!/bin/bash
su -l deploy -c 'cd /var/www/newspicks_23 && /opt/rbenv/shims/bundle/bundle exec unicorn -D -E production -c config/unicorn.rb'
sudo service nginx restart
