(
   export LD_LIBRARY_PATH=/opt/lunar/gnome/2/lib/pkgconfig:$PKG_CONFIG_PATH &&
  
   if [ "$GST" == "n" ] ; then
     OPTS="$OPTS --enable-gstreamer"
   fi

   default_build

) > $C_FIFO 2>&1
