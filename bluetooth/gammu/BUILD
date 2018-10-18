sedit "s:etc/sysconfig:etc:g" contrib/init/gammu-smsd.service &&
sedit "s:/bin/rm:/usr/bin/rm:" contrib/init/gammu-smsd.service &&

OPTS+=" -DBUILD_SHARED_LIBS=ON  \
        -DENABLE_PROTECTION=OFF \
        -DINSTALL_LSB_INIT=OFF" &&

default_cmake_build &&

if in_depends $MODULE systemd; then
  install ../contrib/udev/45-nokiadku2.rules /usr/lib/udev/rules.d &&
  install ../contrib/udev/69-gammu-acl.rules /usr/lib/udev/rules.d
fi &&

if [ ! -f /etc/gammu-smsdrc ] ; then
  cp ../docs/config/smsdrc /etc/gammu-smsdrc
fi &&

if [ ! -f /etc/gammurc ] ; then
  cp ../docs/config/gammurc /etc/gammurc
fi
