#!/bin/bash

r=$(mysql -h ${MYSQL_HOST} -u${MYSQL_USER} -p${MYSQL_PASSWORD} ${MYSQL_DATABASE} -e "SHOW TABLES")
if [[ ${r} == "" ]]; then
  airflow initdb
fi

airflow webserver