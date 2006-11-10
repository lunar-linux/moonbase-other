(

 unset CPP &&
 CFLAGS="$CFLAGS `pkg-config glib-2.0 --cflags`" &&
 sedit "s:/usr/local:/usr:"                    Makefile  &&
 sedit "s:/share:/share/games:"                Makefile  &&
 sedit "s:/bin:/games:"                        Makefile  &&

 default_make
 
) > $C_FIFO 2>&1
