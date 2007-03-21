(

  if [ "$KDE" == "y" ] ; then
    OPTS="$OPTS --enable-kde"
  fi

  if [ "$GNOME" == "n" ] ; then
    OPTS="$OPTS --disable-gnome"
  fi

  if [ "$XIN" == "y" ] ; then
    OPTS="$OPTS --enable-xinerama"
  fi

  ./configure  --build=$BUILD             \
               --sysconfdir=/etc          \
               --prefix=/usr              \
               --localstatedir=/var       \
               --infodir=/usr/share/info  \
               --mandir=/usr/share/man    \
               $OPTS                     &&

  default_make &&

  if module_installed gdm ; then
	install -m755 $SCRIPT_DIRECTORY/Fluxbox /etc/X11/gdm/Sessions/
  fi
  
) > $C_FIFO 2>&1
