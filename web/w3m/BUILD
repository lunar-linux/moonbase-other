OPTS+=" --with-browser=/usr/bin/xdg-open \
	--with-termlib=ncurses \
	--disable-w3mmailer \
	--enable-image=fb"

if module_installed libXext; then
  OPTS+=",X11"
fi

default_build
