sed -i -e "s:mkdir:mkdir -p:" mkinstalldirs &&

OPTS+=" --sysconfdir=/etc/$MODULE" &&

default_build &&

install -Dm644 mtools.conf /usr/share/doc/mtools &&

if [ ! -f /etc/mtools/mtools.conf ] ; then
  sed -i -e '/^SAMPLE FILE$/s:^:#:' mtools.conf &&
  install -Dm644 mtools.conf /etc/mtools/mtools.conf
fi
