(

  unpack $SOURCE2                   &&
  mkdir host  && cd host            &&
  unpack $SOURCE3                   &&
  make                              &&

  cd $SOURCE_DIRECTORY              &&
  echo CFLAGS:= $CFLAGS
  echo OPTS:= $OPTS
  set -x && #Let's show the logs what we've used for debug
  ./configure  --build=$BUILD               \
               --prefix=/usr                \
               --sysconfdir=/etc            \
               --localstatedir=/var         \
               --mandir=/usr/share/man      \
               --with-host=/usr/bin/tr_host \
               $OPTS                 &&
  set +x     && ##turn it off so that the logs stay readable
  make                               &&
  prepare_install                    &&
  make    install
  mkdir -p /usr/share/$MODULE
  cp host/host /usr/bin/tr_host                     &&
  cp host/host.1 /usr/share/man/man1/tr_host.1      &&
  cp hosts.cache  networks.cache /usr/share/$MODULE

) > $C_FIFO 2>&1 

