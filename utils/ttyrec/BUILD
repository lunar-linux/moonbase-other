make CFLAGS+="-DSVR4 -DHAVE_inotify -D_XOPEN_SOURCE=500" &&
make &&
prepare_install &&

install -Dm0755 tty{play,rec,time} /usr/bin/ &&
install -Dm0644 tty{play,rec,time}.1 /usr/share/man/man1/
