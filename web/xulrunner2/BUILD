(

  OPTS+=" --enable-application=xulrunner \
          --prefix=/usr \
          --libdir=/usr/lib \
          --with-system-jpeg \
          --with-system-zlib \
          --with-system-bz2 \
          --enable-system-lcms \
          --enable-system-sqlite \
          --enable-system-cairo \
          --with-pthreads \
          --enable-strip \
          --disable-tests \
          --disable-mochitest \
          --disable-installer \
          --disable-debug \
          --enable-optimize \
          --enable-default-toolkit=cairo-gtk2 \
          --enable-pango \
          --enable-svg \
          --enable-canvas \
          --disable-javaxpcom \
          --disable-crashreporter \
          --enable-safe-browsing \
          --disable-necko-wifi \
          --enable-startup-notification" &&

# wifi breaks build due to incompatibile header files
  #OPTS+=" --enable-application=xulrunner \
  #        --disable-test \
  #        --enable-system-sqlite \
  #        --enable-image-encoder=all \
  #        --enable-js-binary \
  #        --enable-storage --enable-places --enable-places_bookmarks \
  #        --enable-jsd \
  #        --enable-xpctools \
  #        --enable-gnomeui \
  #        --disable-libxul \
  #        --disable-javaxpcom"

  export MOZ_CO_PROJECT=xulrunner &&
  export MOZILLA_OFFICIAL=1 &&
  export BUILD_OFFICIAL=1 &&

  default_build 

) > $C_FIFO 2>&1
