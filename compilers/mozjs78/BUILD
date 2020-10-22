OPTS+=" --with-system-nspr \
         --with-system-icu \
         --with-system-zlib \
         --with-intl-api \
         --enable-optimize \
         --enable-readline \
         --enable-smoosh \
         --enable-strip \
         --disable-jemalloc"

cd $BUILD_DIRECTORY/$SOURCE_DIRECTORY/js/src &&
mkdir -p lunar_build &&
cd lunar_build &&

../configure --prefix=/usr \
${OPTS} &&

default_make
