(

  sedit 's/-nonet//' doc/man/Makefile* &&

  add_priv_group polkituser &&
  add_priv_user polkituser:polkituser -d /dev/null -s /bin/true &&

  default_build

) > $C_FIFO 2>&1
