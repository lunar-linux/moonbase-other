(
  #Patch stuff
  patch_it $SOURCE_CACHE/$SOURCE3 1             # Via c3
  patch_it $SOURCE_CACHE/$SOURCE4 1             # old static-bin segfault
  if [ -n "$MAKES" ] && [ "$MAKES" -gt 1 ] ; then
    sedit "s/# PARALLELMFLAGS = -j 4/PARALLELMFLAGS = -j $MAKES/" Makefile.in
  fi

  # Don't allow too much damage
  unset CFLAGS CXXFLAGS CPPFLAGS
  export CC=gcc

  # Don't fully strip libc
  if [[ "$LDFLAGS" == *-s* ]] ; then
    STRIP=y
  fi
  unset LDFLAGS 

  INSTALL_ROOT=$SOURCE_DIRECTORY/glibcroot &&
  mkdir -p $INSTALL_ROOT &&
  cd $INSTALL_ROOT

  ../configure --host=$BUILD                          \
               --build=$BUILD                         \
               --enable-add-ons=linuxthreads          \
               --with-elf                             \
               --with-headers=/usr/src/linux/include  \
               --with-gd=no                           \
               --without-cvs                          \
               --enable-shared                        \
               --infodir=/usr/share/info              \
               --mandir=/usr/share/man                \
               --prefix=/usr                          \
               $OPTS                                  &&
  make                                        &&

  # Preserve the old glibc temporarily
  cp /lib/ld-linux.so.2 /lib/ld-lunar.so      &&
  cp /lib/libc.so.6 /lib/libc-lunar.so        &&
  cp /lib/libdl.so.2 /lib/libdl-lunar.so      &&
  cp /lib/libm.so.6 /lib/libm-lunar.so        &&
  cp /lib/librt.so.1 /lib/librt-lunar.so      &&
  cp /lib/libpthread.so.0 /lib/libpthread-lunar.so &&
  cp /lib/libnss_files.so.2 /lib/libnss_files-lunar.so &&
  cp /lib/libutil.so.1 /lib/libutil-lunar.so  &&
  cp /lib/libnsl.so.1 /lib/libnsl-lunar.so    &&
  cp /lib/libcrypt.so.1 /lib/libcrypt-lunar.so &&

  # Setup links for libraries
  sln /lib/ld-lunar.so /lib/ld-linux.so.2     &&
  sln /lib/libc-lunar.so /lib/libc.so.6       &&
  sln /lib/libdl-lunar.so /lib/libdl.so.2     &&
  sln /lib/libm-lunar.so /lib/libm.so.6       &&
  sln /lib/librt-lunar.so /lib/librt.so.1     &&
  sln /lib/libpthread-lunar.so /lib/libpthread.so.0 &&
  sln /lib/libnss_files-lunar.so /lib/libnss_files.so.2 &&
  sln /lib/libutil-lunar.so /lib/libutil.so.1 &&
  sln /lib/libnsl-lunar.so /lib/libnsl.so.1   &&
  sln /lib/libcrypt-lunar.so /lib/libcrypt.so.1 &&

  # This removes the old glibc
  prepare_install                             &&

  # And now we install the new
  make install                                &&

  # Now optionally perform debug symbol stripping only
  if [ "$STRIP" == "y" ] ; then
    for FN in ld-2.3.2.so libanl-2.3.2.so libBrokenLocale-2.3.2.so libc-2.3.2.so   \
              libcrypt-2.3.2.so libdl-2.3.2.so libm-2.3.2.so libmemusage.so        \
              libnsl-2.3.2.so libnss_compat-2.3.2.so libnss_files-2.3.2.so         \
              libnss_hesiod-2.3.2.so libnss_nis-2.3.2.so libnss_nisplus-2.3.2.so   \
              libpcprofile.so libpthread-0.10.so libresolv-2.3.2.so libSegFault.so \
              libthread_db-1.0.so libutil-2.3.2.so
    do
      strip -S /lib/$FN
    done
    for FN in "/usr/lib/gconv/*.so"
    do
      strip -S $FN
    done
  fi                                          &&
  
  # Added a symlink for ash and others
  ln -sf /usr/lib/libbsd-compat.a /usr/lib/libbsd.a &&

  # Rebuild the ld cache
  rm -f /etc/ld.so.cache 2>/dev/null          &&
  ldconfig                                    &&

  # Remove the temporary libc
  rm /lib/ld-lunar.so                         &&
  rm /lib/libc-lunar.so                       &&
  rm /lib/libdl-lunar.so                      &&
  rm /lib/libm-lunar.so                       &&
  rm /lib/librt-lunar.so                      &&
  rm /lib/libpthread-lunar.so                 &&
  rm /lib/libnss_files-lunar.so               &&
  rm /lib/libutil-lunar.so                    &&
  rm /lib/libnsl-lunar.so                     &&
  rm /lib/libcrypt-lunar.so                   &&

  # Generate locale info
  unset   LD_PRELOAD                          &&
  if  [  -z  "$GLIBC_LOCALES"  ];  then
    cat  $SCRIPT_DIRECTORY/locales  |
    while  read  LOCALE  DESCRIPTION;  do
      INPUTFILE=`echo  $LOCALE  |  cut  -d /  -f1`
        CHARMAP=`echo  $LOCALE  |  cut  -d /  -f2`
      mkdir  -p  /usr/lib/locale/$INPUTFILE
      echo "localedef  -i  $INPUTFILE  -f  $CHARMAP  $INPUTFILE"
            localedef  -i  $INPUTFILE  -f  $CHARMAP  $INPUTFILE
    done
    true
  else
    for  LOCALE  in  $GLIBC_LOCALES;  do
      INPUTFILE=`echo  $LOCALE  |  cut  -d /  -f1`
        CHARMAP=`echo  $LOCALE  |  cut  -d /  -f2`
      mkdir  -p  /usr/lib/locale/$INPUTFILE
      echo "localedef  -i  $INPUTFILE  -f  $CHARMAP  $INPUTFILE"
            localedef  -i  $INPUTFILE  -f  $CHARMAP  $INPUTFILE
    done
    true
  fi
  
) > $C_FIFO 2>&1  &&  ldconfig
