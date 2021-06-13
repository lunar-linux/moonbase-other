
if in_depends $MODULE lld; then
  export CC=clang
  export CXX=clang++
  export AR=llvm-ar
  export NM=llvm-nm
  export RANLIB=llvm-ranlib
fi &&

OPTS+="  --with-system-nspr \
         --with-system-icu \
         --with-system-zlib \
         --with-intl-api \
         --enable-optimize \
         --enable-readline \
         --enable-smoosh \
         --enable-strip \
         --disable-jemalloc"

cd js/src &&
mkdir -p lunar_build &&
cd lunar_build &&

../configure --prefix=/usr $OPTS &&

default_make
