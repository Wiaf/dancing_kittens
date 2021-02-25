#!/bin/sh
# Usage: create_role.sh $ROLENAME

cd roles/
mkdir -p $1/tasks/
touch $1/tasks/main.yml
mkdir -p $1/defaults/
touch $1/defaults/main.yml
mkdir -p $1/handlers/
touch $1/handlers/main.yml
mkdir $1/files/
