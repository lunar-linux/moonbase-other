if in_depends $MODULE openjpeg; then
  CFLAGS+=" -I/usr/include/openjpeg-`lvu installed openjpeg | cut -c1-3`/"
fi &&

if module_installed opencv-3; then
   OPTS+=" --disable-libopencv"
fi &&

# Fix compilation error:
# https://trac.macports.org/ticket/25803
sedit "s:texi2html -monolithic -number:texi2html -monolithic:" Makefile &&

OPTS+=" --prefix=/usr \
        --incdir=/usr/include/ffmpeg2.8 \
        --libdir=/usr/lib/ffmpeg2.8 \
        --shlibdir=/usr/lib/ffmpeg2.8 \
        --disable-static  \
        --disable-debug   \
        --enable-gpl      \
        --enable-zlib     \
        --enable-shared   \
        --enable-swscale  \
        --enable-x11grab  \
        --enable-nonfree  \
        --enable-pthreads \
        --enable-postproc \
        --enable-avfilter \
        --enable-avresample \
        --enable-avresample"

if [ -n $CPU ]; then
  OPTS+=" --cpu=$CPU"
fi &&

if [[ $USE_OPENCV == "y" ]]; then
 export LDFLAGS+=" -L/usr/share/OpenCV/3rdparty/lib/"
fi &&

# With default_build, get error:  Unknown option "--build=i686-pc-linux-gnu"
./configure $OPTS &&
make &&
prepare_install &&
make install-libs install-headers &&
if [ ! -f /etc/ld.so.conf.d/ffmpeg28.conf ]; then
  mkdir -p /etc/ld.so.conf.d &&
  echo "/usr/lib/ffmpeg2.8/" > /etc/ld.so.conf.d/ffmpeg2.8.conf 
fi
