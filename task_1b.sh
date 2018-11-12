#!/bin/bash

LOG=/var/log/auth.log

tail -0f "$LOG" | while read i
do
  [[ $i =~ "authentication failure" ]] && { echo "Зафиксирована попытка неудачной аутентификации"; continue; }
  [[ $i =~ "Accepted password" ]] && { echo "Зафиксирована успешная аутентификация"; continue; }
done
