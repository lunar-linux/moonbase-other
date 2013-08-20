
  patch_it $SOURCE2 1 &&
  patch_it $SOURCE3 0 &&
  sedit "79i #include <iodbc.h>" iodbcinst/unicode.h &&

  OPTS+=" --includedir=/usr/include/$MODULE --libdir=/usr/lib/$MODULE  \
          --with-iodbc-inidir=/etc/unixODBC" &&
  MAKES=1 &&
  default_build
