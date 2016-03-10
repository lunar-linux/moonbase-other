# scrotted reported via irc this fixed his compile problem. A DSO/glibc issue. Odd though it 
# compiled fine here without this. Both machines are x86_64.
CFLAGS+=" -lm" &&

# Wouldn't it be nice if --with-docdir is respected?
OPTS+=" --with-docdir=/usr/share/doc/$MODULE" &&

default_build
