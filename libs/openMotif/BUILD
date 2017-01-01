OPTS+=" --x-libraries=/usr/lib/xorg --sysconfdir=/etc --with-x --x-includes=/usr/include/X11" &&

if [ "`arch`" == "x86_64" ]; then
  OPTS+=" --enable-m64 --disable-m32"
fi &&

default_build
