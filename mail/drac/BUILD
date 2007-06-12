(

  patch_it $SOURCE_CACHE/$SOURCE2 0       &&
  make                                    &&
  prepare_install                         &&
  make    install                         &&
  make    install-man                     &&
  mkdir  -p      /etc/mail                &&
  mkdir  -p      /usr/include/drac        &&
  cp  drac.h     /usr/include/drac        &&
  cp  libdrac.a  /usr/lib

) > $C_FIFO 2>&1  &&

(

  if  [ ! -f  /etc/mail/dracd.allow  ];  then
    cp  $SCRIPT_DIRECTORY/dracd.allow  /etc/mail/
  fi

)
