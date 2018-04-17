#!/bin/bash
source /home/ec2-user/.bash_profile
cd /var/www/newspicks_23
RAILS_ENV=production bundle install
RAILS_ENV=production bundle exec rake db:migrate
RAILS_ENV=production bundle exec rake assets:clobber
RAILS_ENV=production bundle exec rake assets:precompile
