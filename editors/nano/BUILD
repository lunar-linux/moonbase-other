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
  if [ ! -f "/etc/nanorc" ]; then
    install -m 0644 $SCRIPT_DIRECTORY/nanorc /etc/
  fi

) > $C_FIFO 2>&1

