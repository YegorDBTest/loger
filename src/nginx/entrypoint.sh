#!/bin/bash

chown "root:root" /etc/logrotate.d/custom
chmod 0644 /etc/logrotate.d/custom

chown "root:root" /etc/cron.d/custom
chmod 0644 /etc/cron.d/custom
cron

/usr/local/openresty/bin/openresty -g 'daemon off;'
