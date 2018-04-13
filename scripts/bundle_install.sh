#!/bin/bash
cd /var/www/newspicks_23
RAILS_ENV=production /opt/rbenv/shims/bundle/bundle install --path vendor/bundle
RAILS_ENV=production /opt/rbenv/shims/bundle/bundle exec rake db:migrate
RAILS_ENV=production /opt/rbenv/shims/bundle/bundle exec rake assets:clobber
RAILS_ENV=production /opt/rbenv/shims/bundle/bundle exec rake assets:precompile
