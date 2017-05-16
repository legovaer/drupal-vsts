#!/bin/bash
$drupal database:dump --file="site.sql"
$drupal site:status
