if in_depends $MODULE openjpeg ; then
  CFLAGS+=" -I/usr/include/openjpeg-`lvu installed openjpeg | cut -c1-3`/"
fi &&

# Fix compilation error:
# https://trac.macports.org/ticket/25803
sedit "s:texi2html -monolithic -number:texi2html -monolithic:" Makefile  &&

OPTS+=" --incdir=/usr/include/ffmpeg-compat \
        --libdir=/usr/lib/ffmpeg-compat \
        --shlibdir=/usr/lib/ffmpeg-compat \
        --enable-gpl        \
        --enable-shared     \
        --disable-static    \
        --disable-debug     \
        --enable-pthreads   \
        --enable-zlib       \
        --enable-version3   \
        --enable-x11grab"  &&

if [ -n $CPU ] ; then
  OPTS+=" --cpu=$CPU"
fi  &&

# With default_build, get error:  Unknown option "--build=i686-pc-linux-gnu"
./configure --prefix=/usr $OPTS  &&
make &&
prepare_install &&
make install-libs
