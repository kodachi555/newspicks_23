#!/bin/bash
su -l deploy -c 'cd /var/www/newspicks_23 && bundle install --path vendor/bundle'
