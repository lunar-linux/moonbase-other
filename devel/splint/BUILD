sed -i -e '/Compiling/d' src/Makefile.am &&
sed -i -e '1600d' test/Makefile.am &&
sed -i -e '/\$(UnixHeaders)/s|stdio.h stdlib.h||g' lib/Makefile.am &&

export BISON=no
export  LEXLIB=-lfl
autoreconf -fi &&

default_build &&

cp -f doc/splint.1 /usr/share/man/man1/
