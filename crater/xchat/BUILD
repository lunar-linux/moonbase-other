patch_it $SOURCE2 0  &&

sedit 's/GtkType/GType/g' src/fe-gtk/xtext.{c,h}  &&

sedit 's/xchat_LDADD = .*/\0 -lgmodule-2.0/' src/fe-gtk/Makefile.in &&

OPTS+=" --enable-ipv6"  &&

default_build
