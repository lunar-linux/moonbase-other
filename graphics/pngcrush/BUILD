CFLAGS="${CFLAGS} ${CPPFLAGS} -Wall" &&
LDFLAGS="${LDFLAGS}" &&

sed -r 's| -g||g' -i Makefile &&
sed -r 's|^(CFLAGS )=|\1+=|' -i Makefile &&
sed -r 's|^(LDFLAGS )=|\1+=|' -i Makefile &&

default_make
