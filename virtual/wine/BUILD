autoreconf -fiv &&

export CFLAGS="${CFLAGS/-fno-plt/} -ffat-lto-objects"
export LDFLAGS="${LDFLAGS/,-z,now/}"

OPTS+=" --prefix=/usr \
        --libdir=/usr/lib \
        --with-x"

if [ "$(arch)" == "x86_64" ]; then
  OPTS+=" --enable-win64"
fi

mkdir $MODULE-build &&
cd $MODULE-build &&

../configure $OPTS &&

make depend &&
default_make &&

# Font aliasing settings for Win32 applications
install -d /etc/fonts/conf.{avail,d} &&
install -m644 $SCRIPT_DIRECTORY/30-win32-aliases.conf /etc/fonts/conf.avail &&
ln -sf ../conf.avail/30-win32-aliases.conf /etc/fonts/conf.d/30-win32-aliases.conf

# Some look for wine64 binary instead of wine
# Note that the 'wine64' program has been renamed 'wine'
ln -sf wine /usr/bin/wine64
