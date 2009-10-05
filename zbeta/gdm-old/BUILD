(

 sedit 's:GDM_KEY_HALT "daemon/DefaultPath:GDM_KEY_HALT "daemon/HaltCommand:' daemon/gdm.h

 add_priv_user gdm:gdm

 if    module_installed  Linux-PAM;  then  SCHEME="pam"
 elif  module_installed  shadow;     then  SCHEME="shadow"
                                     else  SCHEME="auto"
 fi

 OPTS="$OPTS --enable-authentication-scheme=$SCHEME"

 LDFLAGS="$LDFLAGS -L/usr/X11R6/lib"
 
 ./configure   --build=$BUILD                                        \
               --prefix=${GNOME210_PREFIX:-/usr}                     \
               --with-xinerama=yes                                   \
               --sysconfdir=/etc/X11                                 \
               --localstatedir=/var                                  \
               --infodir=${GNOME210_PREFIX:-/usr}/share/info         \
               --mandir=${GNOME210_PREFIX:-/usr}/share/man           \
               $OPTS                                                 &&

 sedit 's#$(LINK)#$(LINK) $(LIBS)#' daemon/Makefile                  &&
 make                                                                &&
 prepare_install                                                     &&
 make install                                                        &&

 mkdir  -p           /var/gdm                                        &&
 chown  -R  gdm:gdm  /var/gdm                                        &&
 chmod  750          /var/gdm                                        &&

 # This has to be a DIRECTORY, not a FILE
 if [ -e "/etc/X11/gdm/Sessions" ]; then
   rm -fr /etc/X11/gdm/Sessions || true
 fi

 mkdir -p /etc/X11/gdm/Sessions/                                   &&
 install --mode=644 $SCRIPT_DIRECTORY/gnomerc /etc/X11/gdm/gnomerc &&
 install --mode=755 $SCRIPT_DIRECTORY/Sessions/gnome.desktop /etc/X11/dm/Sessions &&
 install --mode=755 $SCRIPT_DIRECTORY/Default /etc/X11/gdm/PreSession/ &&
 install --mode=755 $SCRIPT_DIRECTORY/Default /etc/X11/gdm/Sessions/ 

) > $C_FIFO 2>&1
