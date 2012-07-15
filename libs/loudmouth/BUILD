(

# Fix glib2 header problem.
  sedit "s:glib/gerror.h:glib.h:" loudmouth/lm-error.c &&

  #gnutls >= 2.6 support
  patch_it $SOURCE1 1 &&

  #libtool > 1.5.22 support
  autoconf &&

  #gtk-doc is broken for now
  OPTS+=" --disable-gtk-doc --with-asyncns=yes" &&

  default_build

) > $C_FIFO 2>&1

