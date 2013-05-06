patch_it $SOURCE2 1 &&
patch_it $SOURCE3 0 &&

bad_flags -Werror &&

OPTS+=" --enable-conduits --enable-threads " &&

if [ "`arch`" == "x86_64" ]; then
  export CFLAGS="$CFLAGS -fPIC"
fi  &&

LDFLAGS+=" $LDFLAGS -lm " &&
default_config &&
default_make &&
gather_docs doc/*
