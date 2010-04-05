(

 sedit 's:GDM_KEY_HALT "daemon/DefaultPath:GDM_KEY_HALT "daemon/HaltCommand:' daemon/gdm.h

 add_priv_user gdm:gdm

 if    module_installed  Linux-PAM;  then  SCHEME="pam"
 elif  module_installed  shadow;     then  SCHEME="shadow"
                                     else  SCHEME="auto"
 fi

 OPTS="$OPTS --enable-authentication-scheme=$SCHEME"

 LDFLAGS="$LDFLAGS -L/usr/X11R6/lib"

 ./configure   --build=$BUILD                                 \
               --prefix=${GNOME210_PREFIX:-/usr}              \
               --with-xinerama=yes                            \
               --sysconfdir=/etc                              \
               --localstatedir=/var                           \
               --infodir=${GNOME210_PREFIX:-/usr}/share/info  \
               --mandir=${GNOME210_PREFIX:-/usr}/share/man    \
               --with-dbus-sys=/etc/dbus-1/system.d/          \
               $OPTS                                         &&

 sedit 's#$(LINK)#$(LINK) $(LIBS)#' daemon/Makefile  &&
 make                                                &&
 prepare_install                                     &&
 make install                                        &&

 mkdir  -p           /var/gdm   &&
 chown  -R  gdm:gdm  /var/gdm   &&
 chmod  750          /var/gdm   &&
 mkdir  -p           /home/gdm  &&
 chown  -R  gdm:gdm  /home/gdm  &&
 chmod  750          /home/gdm  &&

 # This has to be a DIRECTORY, not a FILE
 if [ -e "/etc/gdm/Sessions" ]; then
   rm -fr /etc/gdm/Sessions || true
 fi

 mkdir -p /etc/gdm/Sessions/                                    &&
 mkdir -p /etc/dm/Sessions/                                     &&
 install --mode=644 $SCRIPT_DIRECTORY/gnomerc /etc/gdm/gnomerc  &&
 install --mode=755 $SCRIPT_DIRECTORY/Sessions/gnome.desktop /etc/dm/Sessions  &&
 install --mode=755 $SCRIPT_DIRECTORY/Default /etc/gdm/PreSession/  &&
 install --mode=755 $SCRIPT_DIRECTORY/Default /etc/gdm/Sessions/

 #Fix the gconf-sanity-check-2 exited with status 256 error
 mkdir -p /etc/gconf/gconf.xml.system  &&
 chmod 755 /etc/gconf/gconf.xml.system

) > $C_FIFO 2>&1
