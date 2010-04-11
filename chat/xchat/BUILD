(

  OPTS="$OPTS --enable-ipv6"

  patch_it $SOURCE_CACHE/$SOURCE2 1  &&

  sedit 's/GtkType/GType/g' src/fe-gtk/xtext.{c,h} &&

  default_build

) > $C_FIFO 2>&1
