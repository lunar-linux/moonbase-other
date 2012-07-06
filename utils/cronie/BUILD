(

  patch_it $SOURCE2 1 &&

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

  [ -d /var/spool/cron ] || install -d -m 0700 /var/spool/cron &&

  if ! module_installed systemd; then
    [ -e /etc/config.d/crond ] || install -m 644 $SOURCE_DIRECTORY/crond.sysconfig /etc/config.d/crond
  fi

) > $C_FIFO 2>&1
