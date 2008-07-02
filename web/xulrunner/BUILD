(
  
  OPTS+=" --enable-application=xulrunner \
          --disable-mochitest \
          --disable-test \
          --with-system-bz2 \
          --enable-system-sqlite \
          --disable-crashreporter \
          --enable-image-encoder=all \
          --enable-canvas \
          --enable-js-binary \
          --enable-storage --enable-places --enable-places_bookmarks \
          --enable-safe-browsing \
          --enable-jsd \
          --enable-xpctools \
          --disable-libxul \
          --disable-javaxpcom"

  export MOZ_CO_PROJECT=xulrunner
  export MOZILLA_OFFICIAL=1
  export BUILD_OFFICIAL=1

  default_build &&

  # Please check whether this has been corrected with each version bump!
  sedit "s/idldir=\/usr\/share\/idl\/xulrunner-1.9/idldir=\/usr\/share\/idl\/xulrunner-1.9\/stable/" /usr/lib/pkgconfig/libxul.pc

) > $C_FIFO 2>&1
