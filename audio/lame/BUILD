OPTS+=" --disable-static --enable-shared --enable-mp3rtp --disable-gtktest" &&

# fix a compiler error introduced by gcc-4.9.0 on 32-bit machines
case $(uname -m) in
  i?86) sed -i -e '/xmmintrin\.h/d' configure ;;
esac &&

default_build &&

# Docs
rm -f INSTALL.configure README.WINGTK
