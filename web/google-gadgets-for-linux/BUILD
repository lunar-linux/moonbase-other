(

  patch_it $SOURCE2 1 &&

# So it will compile with our version of glib2.
  sedit "s:glib/ghash.h:glib.h:" ggadget/gtk/main_loop.cc &&
  sedit "s:glib/gthread.h:glib.h:" ggadget/gtk/main_loop.cc &&
  sedit "s:glib/gthread.h:glib.h:" hosts/gtk/main.cc &&

  OPTS+=" --disable-werror --disable-static" &&

  default_build

) > $C_FIFO 2>&1
