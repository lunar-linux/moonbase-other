(

  add_priv_user ntp:ntp -d /var/empty   &&
  OPTS+=" --with-privsep-user=ntp"  &&
  default_build

) > $C_FIFO 2>&1
