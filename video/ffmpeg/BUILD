if in_depends $MODULE openjpeg ; then
  CFLAGS+=" -I/usr/include/openjpeg-`lvu installed openjpeg | cut -c1-3`/"
fi &&

# Fix compilation error:
# https://trac.macports.org/ticket/25803
sedit "s:texi2html -monolithic -number:texi2html -monolithic:" Makefile &&

OPTS+=" --disable-static  \
        --disable-debug   \
        --disable-doc     \
        --enable-gpl      \
        --enable-zlib     \
        --enable-shared   \
        --enable-swscale  \
        --enable-nonfree  \
        --enable-pthreads \
        --enable-postproc \
        --enable-avfilter \
        --disable-libopencv"

if [ -n $CPU ] ; then
  OPTS+=" --cpu=$CPU"
fi

# With default_build, get error:  Unknown option "--build=i686-pc-linux-gnu"
./configure --prefix=/usr $OPTS &&

#This utility rearranges a Quicktime file such that the moov atom
#is in front of the data, thus facilitating network streaming.
make tools/qt-faststart &&
default_make &&
install -Dm 755 tools/qt-faststart /usr/bin/
