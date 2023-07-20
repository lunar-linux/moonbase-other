rm -rf tiff &&
rm -rf expat &&
rm -rf jpeg &&
rm -rf jbig2dec &&
rm -rf cups/libs &&
rm -rf freetype &&
rm -rf lcms2mt &&
rm -rf libpng &&
rm -rf zlib &&
rm -rf openjpeg &&
rm -rf Resource/CMap &&
rm -rf ijs &&
rm -rf tesseract &&
rm -rf leptonica &&
rm -rf gdpl &&

OPTS+=" --prefix=/usr \
        --enable-dynamic \
        --with-system-libtiff \
        --disable-compile-inits \
        --with-ijs \
        --with-jbig2dec \
        --with-fontpath=/usr/share/fonts/gsfonts \
        --enable-openjpeg \
        --enable-freetype \
        --with-libpaper \
        --disable-hidden-visibility"

./autogen.sh $OPTS &&

default_make &&

make install-so
