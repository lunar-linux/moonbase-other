
  patch_it $SOURCE2 1 &&

  sedit "s:dist_doc_DATA = AUTHORS NEWS README::" Makefile.in &&
  sedit "s:AM_CONFIG_HEADER:AC_CONFIG_HEADERS:g" configure.ac &&
  find . -name 'Makefile*' -exec sed -i "s:-Werror::" {} \; &&
  find . -name 'Makefile*' -exec sed -i "s:-pedantic::" {} \; &&

  sedit "s:dist_doc_DATA = AUTHORS NEWS README::" Makefile.am &&

  if in_depends $MODULE qt4 ; then
    . /etc/profile.d/qt4.rc
  fi &&

  OPTS+=" --disable-static --enable-backend=libnl" &&

  default_build
