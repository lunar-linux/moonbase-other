(

  OPTS+="--with-user=privoxy --with-group=privoxy"

  add_priv_user privoxy:privoxy  &&

  autoheader       && 
  autoconf         &&
  default_build

) > $C_FIFO 2>&1
