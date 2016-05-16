  # this breaks a symbol check in the build scripts
  LDFLAGS=$(echo $LDFLAGS | sed "s/-s//") &&

  sedit "3i libdir=\%libdir\%" xulrunner/installer/libxul.pc.in &&
  sedit "78i -e \"s|%libdir%|\$(installdir)|\\\" " xulrunner/installer/Makefile.in &&
  sedit "s:-DXP_UNIX: -I\$\{includedir\}/js -DXP_UNIX:" xulrunner/installer/mozilla-js.pc.in &&
  sedit "458i freetype/ftfntfmt.h" config/system-headers &&

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
          --with-system-png \
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
          --disable-startupcache \
          --enable-startup-notification" &&

  export MOZ_PKG_FATAL_WARNINGS=0 &&
  export MOZ_CO_PROJECT=xulrunner &&
  export MOZILLA_OFFICIAL=1 &&
  export BUILD_OFFICIAL=1 &&
  export FREEBL_NO_DEPEND=0 &&

  cd ${MOZ_OBJDIR}  &&
  ../configure $OPTS &&
  default_make
