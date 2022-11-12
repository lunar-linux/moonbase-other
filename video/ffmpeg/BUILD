if in_depends $MODULE openjpeg ; then
  CFLAGS+=" -I/usr/include/openjpeg-`lvu installed openjpeg | cut -c1-3`/"
fi &&

# Fix compilation error:
# https://trac.macports.org/ticket/25803
sedit "s:texi2html -monolithic -number:texi2html -monolithic:" Makefile &&

OPTS+=" --disable-static  \
        --enable-gpl      \
        --enable-zlib     \
        --enable-shared   \
        --enable-swscale  \
        --enable-nonfree  \
        --enable-pthreads \
        --enable-postproc \
        --enable-avfilter \
        --enable-avresample \
        --disable-libopencv"

if [ -n $CPU ] ; then
  OPTS+=" --cpu=$CPU"
fi

# With default_build, get error:  Unknown option "--build=i686-pc-linux-gnu"
./configure --prefix=/usr $OPTS &&

default_make
