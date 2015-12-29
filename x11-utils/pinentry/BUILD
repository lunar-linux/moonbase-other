if in_depends $MODULE qt4; then
  . /etc/profile.d/qt4.rc
fi &&

OPTS+=" --enable-fallback-curses --enable-pinentry-curses" &&

# This is still needed
sedit 's/gulong/gsize/g' gtk+-2/gtksecentry.c  &&

default_build
