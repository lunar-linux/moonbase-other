(
 groupadd  gdm           2>/dev/null
 useradd   gdm  -g  gdm  2>/dev/null


 if    module_installed  Linux-PAM;  then  SCHEME="pam"
 elif  module_installed  shadow;     then  SCHEME="shadow"
                                     else  SCHEME="auto"
 fi

 OPTS="$OPTS --enable-authentication-scheme=$SCHEME"

 LDFLAGS="$LDFLAGS -L/usr/X11R6/lib"

 ./configure   --build=$BUILD                                        \
               --prefix=/opt/lunar/gnome/2.4                         \
               --with-xinerama=yes				     \
               --sysconfdir=/etc/X11                                 \
               --localstatedir=/var                                  \
               $OPTS                                                 &&

 sedit 's#$(LINK)#$(LINK) $(LIBS)#' daemon/Makefile                  &&
 make                                                                &&
 prepare_install                                                     &&
 make install                                                        &&

 mkdir  -p           /var/gdm                                        &&
 chown  -R  gdm:gdm  /var/gdm                                        &&
 chmod  750          /var/gdm                                        &&

 if ! module_installed gdm2; then
   install --mode=644 $SCRIPT_DIRECTORY/gnomerc /etc/X11/gdm/gnomerc
   install --mode=644 $SCRIPT_DIRECTORY/gdm.conf /etc/X11/gdm/gdm.conf
   install --mode=755 $SCRIPT_DIRECTORY/Sessions/Gnome2 /etc/X11/gdm/Sessions
 fi

) > $C_FIFO 2>&1
