(
 
  ./configure  --prefix=/opt/lunar/gnome/2.4 \
               --disable-werror            \
               $OPTS      &&
  default_make  &&

  cp $SCRIPT_DIRECTORY/galeon /opt/lunar/gnome/2.4/bin
  
) > $C_FIFO 2>&1
