
  export MOZ_OBJDIR="${SOURCE_DIRECTORY}/build-mozilla"  &&
  mkdir -p ${MOZ_OBJDIR}  &&

  CFLAGS+=" -fPIC" &&

  OPTS+=" --enable-application=xulrunner \
          --prefix=/usr \
          --libdir=/usr/lib \
          --enable-shared  \
          --with-system-jpeg \
          --with-system-zlib \
          --with-system-bz2 \
          --enable-system-sqlite \
          --enable-system-cairo \
          --enable-pango \
          --enable-system-pixman \
          --with-pthreads \
          --enable-strip \
          --enable-install-strip \
          --disable-tests \
          --disable-mochitest \
          --disable-installer \
          --disable-debug \
          --enable-default-toolkit=cairo-gtk2 \
          --enable-svg \
          --enable-canvas \
          --disable-javaxpcom \
          --disable-crashreporter \
          --enable-safe-browsing \
          --enable-optimize \
          --disable-necko-wifi \
          --enable-tree-freetype \
          --enable-startup-notification" &&

  export MOZ_CO_PROJECT=xulrunner &&
  export MOZILLA_OFFICIAL=1 &&
  export BUILD_OFFICIAL=1 &&
  export FREEBL_NO_DEPEND=0 &&

  cd ${MOZ_OBJDIR}  &&
  ../configure $OPTS &&
  default_make
