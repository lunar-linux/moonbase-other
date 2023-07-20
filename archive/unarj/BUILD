sed 's|CFLAGS =|CFLAGS +=|' -i Makefile &&
sed 's|-o unarj|$(LDFLAGS) -o unarj|' -i Makefile &&

make &&
prepare_install &&

install -Dm 755 unarj -t /usr/bin
