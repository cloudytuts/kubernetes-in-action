#!/bin/sh

kubectl create secret generic wordpress-secret \
--from-literal=wordpress.db.user="wordpress_user" \
--from-literal=wordpress.db.password='my-super-secret-password'