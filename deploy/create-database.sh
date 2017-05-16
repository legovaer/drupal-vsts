#!/bin/bash
mysql -uroot -proot -e "CREATE DATABASE $DRUPAL_DB_NAME"
mysql -uroot -proot -e "GRANT ALL PRIVILEGES ON $DRUPAL_DB_NAME.* TO $DRUPAL_DB_USER@localhost IDENTIFIED BY '$DRUPAL_DB_PASSWORD'"
