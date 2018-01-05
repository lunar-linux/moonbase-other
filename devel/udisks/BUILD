OPTS+=" --disable-static \
        --disable-man-pages" &&

if module_installed systemd ; then
  sedit "s:slashlibdir=$prefix/lib:slashlibdir=/usr/lib/:g" configure.ac &&
  autoconf
fi &&

default_build
