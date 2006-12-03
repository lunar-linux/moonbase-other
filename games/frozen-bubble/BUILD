(

  unset CPP &&
  CFLAGS="$CFLAGS `pkg-config glib-2.0 --cflags`" &&

  sedit  "s:/usr/local:/usr:"      settings.mk  &&
  sedit  "s:/share:/share/games:"  settings.mk  &&
  sedit  "s:/bin:/games:"          settings.mk  &&

  default_make
 
) > $C_FIFO 2>&1
