(

  sedit "s/SYS_TIME_H 1/SYS_TIME_H 0/" compat.h           &&
  patch -p1 < $SOURCE_CACHE/$SOURCE2                      &&

  make                                                    &&
  prepare_install                                         &&
  make    install                                         &&

  mkdir -p /etc/cron.daily /etc/cron.hourly \
           /etc/cron.monthly /etc/cron.weekly             &&
  if [ ! -e /etc/crontab ]; then
    install -m600 $SCRIPT_DIRECTORY/crontab /etc/crontab
  fi                                                      &&

  mkdir -p /var/cache/locate                              &&
  if [ -f /var/cache/locatedb ] ; then
    mv /var/cache/locatedb /var/cache/locate/locatedb
  fi                                                      &&

  if [ -e "/etc/init.d/crond.sh" ]; then
    rm -f /etc/init.d/crond.sh
    rm -f /etc/rc?.d/???crond.sh
  fi                                                      &&

  if [ -e "/usr/man/man?/cron*" ]; then
    rm -f /usr/man/man?/cron*
  fi

) > $C_FIFO 2>&1
