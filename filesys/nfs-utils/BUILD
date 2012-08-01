(

  add_priv_user nfs:daemon                               &&

  # please DO NOT remove --disable-tirpc even if ./configure shows
  # no such option - it works, and without that there's a bug and
  # thus rpc.mountd is not starting... <wdp@lunar-linux.org>
  ./configure --prefix=/usr                               \
              --mandir=/usr/share/man                     \
              --disable-tirpc                             \
              --disable-gss                               \
              --without-tcp-wrappers                      \
              $OPTS                                      &&

  default_make                                           &&
  devoke_installwatch                                    &&
  chown -R nfs:daemon /var/lib/nfs

) > $C_FIFO 2>&1
