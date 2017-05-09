#!/bin/bash
cd ../

composer install

$drupal site:install standard \
  --langcode="$DRUPAL_SI_LANGCODE" \
  --db-type="$DRUPAL_SI_DB_TYPE" \
  --db-host="$DRUPAL_DB_HOST" \
  --db-name="$DRUPAL_DB_NAME" \
  --db-user="$DRUPAL_DB_USER" \
  --db-pass="$DRUPAL_DB_PASSWORD" \
  --db-port="$DRUPAL_DB_PORT" \
  --site-name="$DRUPAL_SI_SITE_NAME" \
  --site-mail="$DRUPAL_SI_SITE_MAIL" \
  --account-name="$DRUPAL_SI_ACCOUNT_NAME" \
  --account-mail="$DRUPAL_SI_ACCOUNT_MAIL" \
  --account-pass="$DRUPAL_SI_ACCOUNT_PASS" \
  --no-interaction

$drupal site:status