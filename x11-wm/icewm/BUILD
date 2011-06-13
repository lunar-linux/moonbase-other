(

  sedit "s:LFLAGS:LDFLAGS:g" src/Makefile  ||  exit 1

  # lets add kde and gnome menu support to the build, iff
  # there is a gnome-config avail :=)
  # the support maybe set to on/off via preferences

  which gnome-config 2>/dev/null >/dev/null  &&
  OPTS=$OPTS" --with-xpm --with-gnome-menus --with-icesound=oss,esd"

  # here are some options :=)
  OPTS=$OPTS" --with-docdir=/usr/share/doc --enable-nls \
  --disable-debug --enable-i18n --enable-gradients \
  --enable-shaped-decorations   --enable-guievents --enable-xfreetype"

#lets default build the beast
  default_build

) > $C_FIFO 2>&1
