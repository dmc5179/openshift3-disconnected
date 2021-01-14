#!/bin/bash

sudo yum install httpd

mv /path/to/repos /var/www/html/
chmod -R +r /var/www/html/repos
restorecon -vR /var/www/html

cp -a /path/to/repos /var/www/html/
chmod -R +r /var/www/html/repos
restorecon -vR /var/www/html

sudo firewall-cmd --permanent --add-service=http
sudo firewall-cmd --reload

systemctl enable httpd
systemctl start httpd


