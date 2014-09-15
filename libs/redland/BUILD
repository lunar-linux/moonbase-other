
  OPTS+=" --disable-static --enable-release" &&

# Fixes a rpathing problem with virtuoso.
  LDFLAGS+=" -Wl,-rpath,/usr/lib/libiodbc" &&

  if in_depends $MODULE libxml2 ; then
    OPTS+=" --with-xml-parser=libxml"
  else
    OPTS+=" --with-xml-parser=expat"
  fi &&

  default_build
