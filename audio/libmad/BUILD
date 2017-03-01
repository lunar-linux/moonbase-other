OPTS+=" --disable-debugging --enable-accuracy --disable-static" &&

if [ `arch` == "x86_64" ] ; then
  OPTS+=" --enable-fpm=64bit"
else
  OPTS+=" --enable-fpm=intel"
fi &&

libtoolize --force --copy &&
aclocal &&
touch NEWS &&
touch AUTHORS &&
touch ChangeLog &&
automake --add-missing &&
autoreconf &&
default_build
