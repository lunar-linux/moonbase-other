(

  groupadd  -g 1006 mailman          2>/dev/null
  useradd   mailman  -g 1006         2>/dev/null

  mkdir /var/mailman                 2>/dev/null
  chown mailman.mailman /var/mailman 2>/dev/null
  chmod 02775 /var/mailman           2>/dev/null

  if  module_installed postfix 
  then  MAIL_GID="65534"
  fi

  if  module_installed exim
  then  MAIL_GID="8"
  fi

  ./configure --prefix=/var/mailman            \
              --with-var-prefix=/var/mailman   \
	      --with-username=mailman          \
	      --with-groupname=mailman         \
	      --with-python=/usr/bin/python    \
	      --with-mail-gid=$MAIL_GID        \
              --with-cgi-id=65534              \
	      --with-cgi-gid=65534             
	      
  make  "CC=gcc"                               \
        "OPT=$CFLAGS"                          \
        "AUXLIBS=$AUXLIBS"                     \
        "CCARGS=CCARGS"                        &&

  prepare_install                              &&
  make install

) > $C_FIFO 2>&1

