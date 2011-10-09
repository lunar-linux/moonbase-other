(

  patch_it $SOURCE_CACHE/$SOURCE2 1  &&

  # This will fix an issue where installwatch fail to track installed headers
  sedit 's;^\(build_install_headers_dir=\).*;\1install-headers-cp;' gcc/config.build &&

  mkdir BUILD  &&
  cd BUILD     &&

  #sedit 's/trap 0/trap "" 0/' ../configure  &&
  # We use libiberty.a from binutils instead
  sedit 's/install_to_$(INSTALL_DEST) //' ../libiberty/Makefile.in  &&

  LANGUAGES="${LANGUAGES:=c++}"  &&

  ../configure --build=$BUILD                         \
               --host=$BUILD                          \
               --enable-languages=$LANGUAGES          \
               --prefix=${MODULE_PREFIX}              \
               --infodir=${MODULE_PREFIX}/share/info  \
               --mandir=${MODULE_PREFIX}/share/man    \
               --enable-__cxa_atexit                  \
               --enable-threads                       \
               --disable-nls                          \
               --enable-target-optspace               \
               --with-gnu-ld                          \
               --with-system-zlib                     \
               --enable-shared                        \
               $OPTS                                 &&

  make CFLAGS='-O' LIBCFLAGS='-g -O2' LIBCXXFLAGS='-g -O2 -fno-implicit-templates' bootstrap-lean  &&
  prepare_install  &&
  make install &&

# This used to be the POST_INSTALL and it really should not have. Doing this sort of thing means
# these files will not be tracked; that is a no-no-no.

  cd /usr/lib/gcc/$BUILD/$VERSION  &&
  ln    -sf /usr/bin/cpp cpp       &&
  cd /lib/                         &&
  ln    -sf /usr/bin/cpp cpp       && 

  if [ ! -e /usr/bin/cc ] ; then
  ln -s gcc /usr/bin/cc
  fi

) > $C_FIFO 2>&1
