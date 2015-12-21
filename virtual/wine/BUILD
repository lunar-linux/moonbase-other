export CFLAGS="${CFLAGS/-O2/} -O0" &&
export CFLAGS+=" -mstackrealign -mincoming-stack-boundary=2" &&

export CXXFLAGS="${CXXFLAGS/-O2/} -O0" &&
export CXXFLAGS+=" -mstackrealign -mincoming-stack-boundary=2" &&

export CPPFLAGS="${CPPFLAGS/-D_FORTIFY_SOURCE=2/} -D_FORTIFY_SOURCE=0" &&

bad_flags "-z combreloc" &&

OPTS+=" --prefix=/usr \
        --libdir=/usr/lib \
        --with-x \
        --without-streamer" &&

if [ $(arch) == x86_64 ]; then
  OPTS+=" --enable-win64"
fi &&

mkdir $MODULE-build &&
cd $MODULE-build &&

../configure $OPTS &&
default_make &&

# Font aliasing settings for Win32 applications
install -d /etc/fonts/conf.{avail,d} &&
install -m644 $SCRIPT_DIRECTORY/30-win32-aliases.conf /etc/fonts/conf.avail
ln -sf ../conf.avail/30-win32-aliases.conf /etc/fonts/conf.d/30-win32-aliases.conf
