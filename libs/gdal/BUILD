# Fixes error of installing etc stuff into /usr/etc
OPTS+=" --sysconfdir=/etc" &&
# and you need this
sed -i "8d" scripts/GNUmakefile &&
sed -i "s:\$(DESTDIR)\${prefix}::" scripts/GNUmakefile &&

./autogen.sh &&

default_build
