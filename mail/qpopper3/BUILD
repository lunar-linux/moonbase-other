(
 
  OPTS=$OPTS" --enable-servermode --enable-specialauth --enable-shy \
  --enable-mysql --enable-log-login-mysql \
  --with-popperconfig=/etc/popper.conf \
  --with-pam=pop"

  patch_it $SOURCE_CACHE/$SOURCE2 1 &&
      
  default_config    &&
  make              &&
  prepare_install   &&

  cp popper/popper  /usr/sbin &&

  if [ ! -e "/etc/popper.conf.sample" ] ; then 
    cp $SCRIPT_DIRECTORY/popper.conf.sample /etc
  fi

) > $C_FIFO 2>&1

