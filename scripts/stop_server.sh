#!/bin/bash
sudo kill -KILL -s QUIT `cat /var/www/newspicks_23/tmp/pids/unicorn.pid`
