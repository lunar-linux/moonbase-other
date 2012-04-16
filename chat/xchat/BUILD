(

  patch_it $SOURCE2 0  &&

  OPTS+=" --enable-ipv6"  &&

  sedit 's/GtkType/GType/g' src/fe-gtk/xtext.{c,h}  &&

  default_build

) > $C_FIFO 2>&1
