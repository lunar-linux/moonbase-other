(
  unset CFLAGS CXXFLAGS CPPFLAGS

  INSTALL_ROOT=$SOURCE_DIRECTORY/glibcroot

  ./configure  --host=$BUILD                          \
               --build=$BUILD                         \
               --enable-kernel=current \
               --enable-add-ons=linuxthreads          \
               --with-elf                             \
               --with-headers=/usr/src/linux/include  \
               --with-gd=no                           \
               --without-cvs                          \
               --enable-shared                        \
               --infodir=/usr/share/info              \
               --mandir=/usr/share/man                \
               --prefix=/usr                \
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

  # Setup links for libraries
  sln /lib/ld-lunar.so /lib/ld-linux.so.2     &&
  sln /lib/libc-lunar.so /lib/libc.so.6       &&
  sln /lib/libdl-lunar.so /lib/libdl.so.2     &&
  sln /lib/libm-lunar.so /lib/libm.so.6       &&
  sln /lib/librt-lunar.so /lib/librt.so.1     &&
  sln /lib/libpthread-lunar.so /lib/libpthread.so.0 &&
  sln /lib/libnss_files-lunar.so /lib/libnss_files.so.2 &&
  sln /lib/libutil-lunar.so /lib/libutil.so.1 &&

  # This removes the old glibc
  prepare_install                             &&

  # And now we install the new
  make install                                &&

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
