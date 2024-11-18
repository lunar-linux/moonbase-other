export CFLAGS+=" -Wno-error=implicit-function-declaration  \
                 -Wno-error=format-security"

OPTS+=" --x-libraries=/usr/lib/xorg --sysconfdir=/etc --with-x --x-includes=/usr/include/X11" &&

default_config &&

sedit 's:  doc \\:  doc:' Makefile &&
sedit 's:demos::' Makefile &&

default_make
