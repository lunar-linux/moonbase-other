(
   if [ "$COLOR" == "y" ] ; then
    OPTS="$OPTS --enable-color"
   fi

   if [ "$NANORC" == "y" ] ; then
    OPTS="$OPTS --enable-nanorc"
   fi
  
   if [ "$MULTI" == "y" ] ; then
    OPTS="$OPTS --enable-multibuffer"
   fi
  
  default_build						&&
  install -m 0644 $SCRIPT_DIRECTORY/nanorc /etc/

) > $C_FIFO 2>&1

