prepare_install &&

mkdir -p /usr/share/fonts/$MODULE &&
install -Dm644 unhinted/ttf/*/*.ttf -t /usr/share/fonts/$MODULE &&

mkdir -p /usr/share/fonts/$MODULE &&
install -Dm644 unhinted/otf/*/*.otf -t /usr/share/fonts/$MODULE &&

mkdir -p /usr/share/fonts/$MODULE &&
install -Dm644 hinted/ttf/*/*.ttf -t /usr/share/fonts/$MODULE

mkdir -p /etc/fonts/conf.{avail,conf.d} &&
install $SCRIPT_DIRECTORY/*.conf /etc/fonts/conf.avail/
