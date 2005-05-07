(

  if module_installed tcl ; then
     OPTS=$OPTS" --with-tcl"
  fi 

  if module_installed perl ; then
     OPTS=$OPTS" --with-perl"
  fi 

  if module_installed Python ; then
     OPTS=$OPTS" --with-python"
  fi 

  if module_installed Linux-PAM ; then
     OPTS=$OPTS" --with-pam"
  fi 

  add_priv_user postgres:postgres  &&
  ./configure  --prefix=/usr        \
	       $OPTS               &&
  default_make                                  

) > $C_FIFO 2>&1
