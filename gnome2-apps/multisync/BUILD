(

   #Stupid hard coded links in build process to old autotool versions....
   rm -fr depcomp install-sh missing mkinstalldirs &&
   ln -sf /usr/share/automake/depcomp depcomp &&
   ln -sf /usr/share/automake/install-sh install-sh &&
   ln -sf /usr/share/automake/missing missing &&
   ln -sf /usr/share/automake/mkinstalldirs mkinstalldirs &&

   ./autogen.sh &&
   default_build &&

   cd plugins/backup_plugin &&
   default_build &&

   cd ../evolution_sync &&
   default_build &&

   cd ../irmc_sync &&
   default_build &&

   cd ../ldap_plugin &&
   default_build &&

   cd ../syncml_plugin &&
   default_build 

) > $C_FIFO  2>&1
