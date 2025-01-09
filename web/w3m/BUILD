sed -i 's#gdk-pixbuf-xlib-2.0#& x11#' configure &&
export CFLAGS+=" -I/usr/include/glib-2.0 -I/usr/lib/glib-2.0/include"

OPTS+=" --libexecdir=/usr/lib \
    	--with-termlib=ncurses \
    	--disable-w3mmailer \
    	--enable-image=x11,fb"

default_build
