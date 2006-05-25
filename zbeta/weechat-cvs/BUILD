(
  ./autogen.sh  --build=$BUILD            \
                --prefix=/usr             \
                --sysconfdir=/etc         \
                --localstatedir=/var      \
                --infodir=/usr/share/info \
                --mandir=/usr/share/man   \
                --disable-nls             \
                $OPTS                     &&
  default_build                           &&
  cd /usr/bin                             &&
  ln -sf weechat-curses weechat

) > $C_FIFO 2>&1
