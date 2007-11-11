(

  if module_installed Linux-PAM; then
      OPTS+=" --with-pam"
  fi &&

  sedit '/^pam_DATA/d' src/Makefile.am &&

  aclocal           &&
  autoheader        &&
  automake -a       &&
  autoconf          &&
  default_build     &&

  chmod 6711 /usr/bin/crontab &&
  install -m 755 $SOURCE_CACHE/$SOURCE2 /usr/bin/run-parts  &&

  mkdir -p /etc/cron.daily /etc/cron.hourly  /etc/cron.d\
           /etc/cron.monthly /etc/cron.weekly               &&

  touch /etc/cron.deny &&

  if [ ! -f /etc/crontab ]; then
    install -m 644 $SCRIPT_DIRECTORY/crontab /etc/crontab
  fi

) > $C_FIFO 2>&1
