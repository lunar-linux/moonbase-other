(

  if module_installed Linux-PAM; then
    OPTS+=" --with-pam"
  fi &&

  sedit '/^dist_pam_DATA/d' Makefile.am &&
  aclocal           &&
  autoheader        &&
  automake -a       &&
  autoconf          &&

  default_build &&

  chmod 6711 /usr/bin/crontab &&

  mkdir -p /etc/cron.{daily,hourly,weekly,monthly,d} &&
  install -m 755 $SOURCE_CACHE/$SOURCE2 /usr/bin/run-parts &&
  [ -e /etc/config.d/crond ] || install -m 644 $SOURCE_DIRECTORY/crond.sysconfig /etc/config.d/crond &&
  [ -e /etc/crontab ] || install -m 644 $SOURCE_CACHE/$SOURCE3 /etc/crontab &&
  touch /etc/cron.deny

) > $C_FIFO 2>&1
