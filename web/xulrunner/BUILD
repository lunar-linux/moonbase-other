(

  tar -xjf $SOURCE_CACHE/$SOURCE2 -C $SOURCE_DIRECTORY &&

  patch_it patch/mozilla-ps-pdf-simplify-operators.patch 1 &&
  patch_it patch/100-system-hunspell-corrections.patch 0 &&
  patch_it patch/bzXXX_pc_honour_system_nspr_nss.patch 1 &&
  patch_it patch/mozilla-pkgconfig.patch 1 &&
  patch_it patch/fix-mozilla-launcher.patch 0 &&

  OPTS+=" --enable-application=xulrunner \
          --prefix=/usr \
          --libdir=/usr/lib \
          --with-system-nspr \
          --with-system-jpeg \
          --with-system-zlib \
          --with-system-bz2 \
          --enable-system-lcms \
          --disable-system-sqlite \
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
          --enable-startup-notification"

  
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

  export MOZ_CO_PROJECT=xulrunner
  export MOZILLA_OFFICIAL=1
  export BUILD_OFFICIAL=1

  default_build 

  # Please check whether this has been corrected with each version bump!
  #sedit "s/idldir=\/usr\/share\/idl\/xulrunner-1.9/idldir=\/usr\/share\/idl\/xulrunner-1.9\/stable/" /usr/lib/pkgconfig/libxul.pc

) > $C_FIFO 2>&1
