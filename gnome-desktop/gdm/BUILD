(

  export PATH=/opt/lunar/gnome/2/bin:$PATH
  export PKG_CONFIG_PATH=/opt/lunar/gnome/2/lib/pkgconfig:$PKG_CONFIG_PATH
  add_priv_user gdm:gdm

  if module_installed Linux-PAM ; then
    SCHEME="pam"
  elif module_installed shadow ; then
    SCHEME="shadow"
  else
    SCHEME="auto"
  fi

  OPTS="$OPTS --enable-authentication-scheme=$SCHEME"

  LDFLAGS="$LDFLAGS -L/usr/X11R6/lib"

  ./configure  --build=$BUILD                                        \
               --prefix=/opt/lunar/gnome/2                           \
               --with-xinerama=yes                                   \
               --sysconfdir=/etc/X11                                 \
               --localstatedir=/var                                  \
	       $OPTS                                                 &&

  sedit 's#$(LINK)#$(LINK) $(LIBS)#' daemon/Makefile                 &&
  default_make                                                       &&

  mkdir  -p           /var/gdm                                       &&
  chown  -R  gdm:gdm  /var/gdm                                       &&
  chmod  750          /var/gdm                                       &&

  install --mode=755 $SCRIPT_DIRECTORY/Sessions/Gnome /etc/X11/gdm/Sessions  &&
  install --mode=755 $SCRIPT_DIRECTORY/gnomerc /etc/X11/gdm/gnomerc

) > $C_FIFO 2>&1
