(

  # Only want glib-2 to own /usr/lib/gio/modules/giomodule.cache
  sedit "s:dummy gio-querymodules:dummy echo:" configure &&

  default_build

) > $C_FIFO 2>&1
