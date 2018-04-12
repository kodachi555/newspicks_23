#!/bin/bash
su -l deploy -c 'cd /var/www/sample-app && bundle install --path vendor/bundle'
