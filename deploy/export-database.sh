#!/bin/bash
cd ../
$drupal database:dump --file="$DRUPAL_DB_FILE"
