(
# This hack suggest by ptitlouis from #weechat for building on a box with no gtk+-2 available
  if ! module_installed gtk+-2; then
    sedit 's/\(.*AM_PATH_GTK.*\)/#\1/' configure.in
  fi &&
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
  ln -sf weechat-curses weechat           &&
  gather_docs UPGRADE_0.3

) > $C_FIFO 2>&1
