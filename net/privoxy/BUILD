(

  # Use Lunar's initscript instead
  sedit "s:\[ -w \$(DESTDIR)/etc/init\.d \]:\[ 0 = 1 \]:1" GNUmakefile.in  &&

  # The two autotools jokers NEED to be run first. Closes BR278.
  autoheader  &&
  autoconf    &&

  add_priv_user privoxy:privoxy  &&

  OPTS+=" --with-user=privoxy --with-group=privoxy --sysconfdir=/etc/privoxy"  &&

  default_build

) > $C_FIFO 2>&1
