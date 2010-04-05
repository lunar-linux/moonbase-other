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

  chmod 6711 /usr/bin/crontab

) > $C_FIFO 2>&1
