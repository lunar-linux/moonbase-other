#!/bin/sh

for i in krb5kdc 
  do {
  case $1 in
      start)  echo   "$1ing the Kerberos controller $i."
              /usr/sbin/$i
              ;;
       stop)  echo   "$1ing the Kerberos controller $i."
              pkill "^$i"
              ;;
          *)  echo   "Usage $0 {start|stop}"
  esac
} done