
( 
   ./configure  --build=$BUILD					\
                --prefix=/opt/lunar/xfce/4.0			\
                $OPTS                                           &&
   ( 
     cd src && 
     gdk-pixbuf-csource --raw --build-list \
        xfcalendar_icon xfcalendar.png > xfcalendar-icon-inline.h
   )								&&

   default_make

) > $C_FIFO 2>&1
