(
 
   OPTS=$OPTS" --enable-servermode --enable-specialauth --enable-shy \
   --enable-mysql --enable-log-login-mysql \
   --with-popperconfig=/etc/popper.conf \
   --with-pam=pop"
   
   bzcat $SCRIPT_DIRECTORY/qpopper3.1.2-mysql-0.11.2.patch.bz2 | \
      patch -p1      &&
      
   default_config    &&
   make              &&
   prepare_install   &&

   cp popper/popper  /usr/sbin

) > $C_FIFO 2>&1

   [ -e "/etc/popper.conf.sample" ] ||  cp $SCRIPT_DIRECTORY/popper.conf.sample /etc
