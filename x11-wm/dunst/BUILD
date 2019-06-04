make X11INC=/usr/include/X11 X11LIB=/usr/lib/X11 &&
make X11INC=/usr/include/X11 X11LIB=/usr/lib/X11 dunstify &&

prepare_install &&

make PREFIX=/usr install &&
install -Dm755 dunstify /usr/bin/
#install -Dm755 contrib/dunst_espeak.sh /usr/bin/
