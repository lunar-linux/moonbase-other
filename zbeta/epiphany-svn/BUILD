(

   if [[ "$DESKTOP_PLUGIN" == "y" ]]; then
     OPTS="$OPTS --enable-deskop-file-plugin"
   fi

   if [[ "$ZEROCONF_BOOKMARKS" == "y" ]]; then
     OPTS="$OPTS --enable-zeroconf"
   fi

   if [[ "$CERTIFICATE_MANAGER" == "y" ]]; then
     OPTS="$OPTS --enable-certificate-manager"
   fi

   OPTS="$OPTS --with-engine=webkit"

   sedit 's/xulrunner mozilla webkit/webkit/g' embed/Makefile.am
 
   default_cvs_build

) > $C_FIFO 2>&1
