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

  
  default_build
) > $C_FIFO 2>&1

