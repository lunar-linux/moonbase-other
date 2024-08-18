bad_flags -mssse3 &&
bad_flags -mfpmath=sse &&
sed -i 's#l \(gtk-.*\).sgml#& -o \1#' docs/{faq,tutorial}/Makefile.am &&

autoreconf -fvi &&

CFLAGS+=" -Wno-error=implicit-int -Wno-error=incompatible-pointer-types"

# Fixes mysterious drag and drop crash in gtk+-2
# gtk+-2 when compiled with -O2 or -O3 will compile well
# but crash on drag and drop of bitmaps.
# Surprisingly -Os works well and does not need the fix below.
# The scary thing is -O2, -O3 and -Os all enable -fcaller-saves
# but only -Os does it in a way gtk+-2 does not crash on DnD.
case "$CFLAGS" in
  *-O[23]*)
    CFLAGS+=' -fno-caller-saves'
    ;;
esac &&


OPTS+=" --with-gdktarget=x11" &&

default_build &&
install -m0664 gdk/gdkconfig.h /usr/include/gtk-2.0/gdk/
