#!/bin/bash
cd /var/www/newspicks_23
RAILS_ENV=production bundle install --path vendor/bundle
RAILS_ENV=production bundle exec rake db:migrate
RAILS_ENV=production bundle exec rake assets:clobber
RAILS_ENV=production bundle exec rake assets:precompile
