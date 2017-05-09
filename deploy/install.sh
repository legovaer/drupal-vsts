#!/bin/bash

drupal=/home/webcms/.config/composer/vendor/bin/drupal

mysql -e "CREATE DATABASE drupal"
mysql -e "GRANT ALL PRIVILEGES ON drupal.* TO drupal@localhost IDENTIFIED BY 'drupal'"

$drupal site:install standard --langcode="en" --db-type="mysql" --db-host="localhost" --db-name="drupal" --db-user="drupal" --db-pass="drupal" --db-port="3306" --site-name="WebCMS Demo" --site-email="webcms@ub.com" --account-name="admin" --account-mail="webcms@ucb.com" --account-pass="admin" --no-interaction

$drupal site:status

mysql -e "DROP DATABASE drupal"
