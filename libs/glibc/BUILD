(

  if [ -n "$MAKES" ] && [ "$MAKES" -gt 1 ] ; then
    sedit "s/# PARALLELMFLAGS = -j 4/PARALLELMFLAGS = -j $MAKES/" Makefile.in
  fi

  # Don't allow too much damage
  unset CFLAGS CXXFLAGS CPPFLAGS LD_LIBRARY_PATH
  export CC=gcc

  # Don't fully strip libc
  if [[ "$LDFLAGS" == *-s* ]] ; then
    STRIP=y
  fi
  unset LDFLAGS 

  INSTALL_ROOT=$SOURCE_DIRECTORY/glibcroot &&
  mkdir -p $INSTALL_ROOT &&
  cd $INSTALL_ROOT

  if module_installed kernel-headers-2.6 ; then
     KERNEL_HEADERS="/usr/include"
  else
     KERNEL_HEADERS="/usr/src/linux/include"
  fi

  ../configure --host=$BUILD                           \
               --build=$BUILD                          \
               --enable-add-ons=linuxthreads           \
               --with-elf                              \
               --with-headers=${KERNEL_HEADERS}        \
               --with-gd=no                            \
               --without-__thread                      \
               --without-cvs                           \
               --enable-shared                         \
               --infodir=/usr/share/info               \
               --mandir=/usr/share/man                 \
               --prefix=/usr                           \
               $OPTS                                  &&
  # explicitly exit here since the following code unsets $?
  make || exit 1

  # Preserve the old glibc temporarily
case  "`arch`" in
  "alpha")
	  LD=/lib/ld-linux.so.2
	  GLIBC=/lib/libc.so.6.1
	  DL=/lib/libdl.so.2.1
	  M=/lib/libm.so.6.1
	  RT=/lib/librt.so.1
	  PTHREAD=/lib/libpthread.so.0
	  NSS=/lib/libnss_files.so.2
	  UTIL=/lib/libutil.so.1.1
	  NSL=/lib/libnsl.so.1.1
	  CRYPT=/lib/libcrypt.so.1.1
	  ;;
   ppc)
	  LD=/lib/ld.so.1
	  GLIBC=/lib/libc.so.6
	  DL=/lib/libdl.so.2
	  M=/lib/libm.so.6
	  RT=/lib/librt.so.1
	  PTHREAD=/lib/libpthread.so.0
	  NSS=/lib/libnss_files.so.2
	  UTIL=/lib/libutil.so.1
	  NSL=/lib/libnsl.so.1
	  CRYPT=/lib/libcrypt.so.1
	  ;;
  *)
	  LD=/lib/ld-linux.so.2
	  GLIBC=/lib/libc.so.6
	  DL=/lib/libdl.so.2
	  M=/lib/libm.so.6
	  RT=/lib/librt.so.1
	  PTHREAD=/lib/libpthread.so.0
	  NSS=/lib/libnss_files.so.2
	  UTIL=/lib/libutil.so.1
	  NSL=/lib/libnsl.so.1
	  CRYPT=/lib/libcrypt.so.1
	  ;;
esac

  cp $LD /lib/ld-lunar.so               &&
  cp $GLIBC /lib/libc-lunar.so          &&
  cp $DL /lib/libdl-lunar.so            &&
  cp $M /lib/libm-lunar.so              &&
  cp $RT /lib/librt-lunar.so            &&
  cp $PTHREAD /lib/libpthread-lunar.so  &&
  cp $NSS /lib/libnss_files-lunar.so    &&
  cp $UTIL /lib/libutil-lunar.so        &&
  cp $NSL /lib/libnsl-lunar.so          &&
  cp $CRYPT /lib/libcrypt-lunar.so      &&

  # Setup links for libraries
  sln /lib/ld-lunar.so $LD               &&
  sln /lib/libc-lunar.so $GLIBC          &&
  sln /lib/libdl-lunar.so $DL            &&
  sln /lib/libm-lunar.so $M              &&
  sln /lib/librt-lunar.so $RT            &&
  sln /lib/libpthread-lunar.so $PTHREAD  &&
  sln /lib/libnss_files-lunar.so $NSS    &&
  sln /lib/libutil-lunar.so $UTIL        &&
  sln /lib/libnsl-lunar.so $NSL          &&
  sln /lib/libcrypt-lunar.so $CRYPT      &&

  # clean hack to make sure gnu/stubs.h gets refreshed
  rm -f /usr/include/gnu/stubs.h  &&
  # This removes the old glibc
  prepare_install                 &&

  # And now we install the new
  make install                    &&

  # Now optionally perform debug symbol stripping only
  if [ "$STRIP" == "y" ] ; then
    for FN in ld-$VERSION.so libanl-$VERSION.so libBrokenLocale-$VERSION.so \
        libc-$VERSION.so libcrypt-$VERSION.so libdl-$VERSION.so \
	libm-$VERSION.so libnsl-$VERSION.so libresolv-$VERSION.so \
	libnss_compat-$VERSION.so libnss_files-$VERSION.so \
	libnss_hesiod-$VERSION.so libutil-$VERSION.so \
	libnss_nis-$VERSION.so libnss_nisplus-$VERSION.so \
	libpthread-$VERSION.so libmemusage.so \
	libpcprofile.so libSegFault.so libthread_db-1.0.so 
    do
      strip -S /lib/$FN
    done
    for FN in "/usr/lib/gconv/*.so"
    do
      strip -S $FN
    done
  fi  &&
  
  # Added a symlink for ash and others
  ln -sf /usr/lib/libbsd-compat.a /usr/lib/libbsd.a  &&

  # Rebuild the ld cache
  rm -f /etc/ld.so.cache 2>/dev/null  &&
  ldconfig                            &&

  # Remove the temporary libc
  rm /lib/ld-lunar.so            &&
  rm /lib/libc-lunar.so          &&
  rm /lib/libdl-lunar.so         &&
  rm /lib/libm-lunar.so          &&
  rm /lib/librt-lunar.so         &&
  rm /lib/libpthread-lunar.so    &&
  rm /lib/libnss_files-lunar.so  &&
  rm /lib/libutil-lunar.so       &&
  rm /lib/libnsl-lunar.so        &&
  rm /lib/libcrypt-lunar.so      &&

  # Generate locale info
  unset   LD_PRELOAD             &&
  if  [  -z  "$GLIBC_LOCALES"  ];  then
    make localedata/install-locales || exit 1
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
