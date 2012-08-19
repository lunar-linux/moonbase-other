(

  patch_it $SOURCE2 1 &&
# Inserting a missing header
  sed -i "4i #include <cstddef>" gfx/ots/src/os2.cc &&

# See https://lkml.org/lkml/2011/6/14/293 and https://bugzilla.mozilla.org/show_bug.cgi?id=661609
  KERN_VER=`uname -r | cut -c1-3` &&
  cp security/coreconf/Linux2.6.mk security/coreconf/Linux$KERN_VER.mk &&

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
  export FREEBL_NO_DEPEND=0 &&

  default_build 

) > $C_FIFO 2>&1
