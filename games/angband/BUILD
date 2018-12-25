OPTS+=" --with-setgid=games \
        --sysconfdir=/etc \
        --localstatedir=/var/games \
        --datarootdir=/usr/share/games \
        --docdir=/usr/share/doc/$MODULE"

default_game_build &&

if in_depends "$MODULE" "SDL"; then
    [ -d /usr/share/applications ] ||
	    install -dm 0755 /usr/share/applications
    install -Dm0644 lib/icons/angband-sdl.desktop /usr/share/applications/
fi &&

if in_depends "$MODULE" "libX11"; then
    [ -d /usr/share/applications ] ||
	    install -dm 0755 /usr/share/applications
    install -Dm0644 lib/icons/angband-x11.desktop /usr/share/applications/
fi
