(
# protect from ccache
  unset CC CXX  &&

  sedit 's/python2.2/python2.3/' unix/configure     &&
  sedit 's/python2.2/python2.3/' unix/configure.in  &&

  unix/configure  --prefix=/usr            \
                  --sysconfdir=/etc        \
                  --localstatedir=/var     \
                  --mandir=/usr/share/man  \
                  $OPTS                   &&

 default_make

) > $C_FIFO 2>&1

