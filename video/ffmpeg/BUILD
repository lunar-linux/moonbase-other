if in_depends $MODULE openjpeg; then
  CFLAGS+=" -I/usr/include/openjpeg-`lvu installed openjpeg | cut -c1-3`/"
fi &&

# Fix compilation error https://trac.macports.org/ticket/25803
sedit "s:texi2html -monolithic -number:texi2html -monolithic:" Makefile &&

OPTS+=" --enable-gpl        \
        --enable-shared     \
        --enable-x11grab    \
        --enable-avdevice   \
        --enable-avcodec    \
        --enable-avformat   \
        --enable-avfilter   \
        --enable-avisynth   \
        --enable-avresample \
        --enable-pthreads   \
        --enable-postproc   \
        --enable-x11grab    \
        --enable-swscale    \
        --disable-debug     \
        --disable-static    \
        --disable-stripping \
        --disable-demuxer=hls \
        --disable-protocol=concat,hls" &&

if [ -n $CPU ]; then
  OPTS+=" --cpu=$CPU"
fi &&

# With default_build, get error:  Unknown option "--build=i686-pc-linux-gnu"
./configure --prefix=/usr $OPTS &&

default_make
