#!/bin/bash
read -p "Enter database user: " user
read -p "Enter database user password: " pass
if mysql -u$user -h'localhost' -p$pass < ${HOME}/BuildMaxCrm/sql_dump/dump.sql
then
echo "Database for MaxCRM created successfully"
fi
