(
  #Patch stuff
  patch_it $SOURCE_CACHE/$SOURCE3 1             # Via c3
  patch_it $SOURCE_CACHE/$SOURCE4 1             # old static-bin segfault
  patch_it $SOURCE_CACHE/$SOURCE5 1		# gcc 3.3 glibc patch
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

  cp $LD /lib/ld-lunar.so      &&
  cp $GLIBC /lib/libc-lunar.so        &&
  cp $DL /lib/libdl-lunar.so      &&
  cp $M /lib/libm-lunar.so        &&
  cp $RT /lib/librt-lunar.so      &&
  cp $PTHREAD /lib/libpthread-lunar.so &&
  cp $NSS /lib/libnss_files-lunar.so &&
  cp $UTIL /lib/libutil-lunar.so  &&
  cp $NSL /lib/libnsl-lunar.so    &&
  cp $CRYPT /lib/libcrypt-lunar.so &&

  # Setup links for libraries
  sln /lib/ld-lunar.so $LD     &&
  sln /lib/libc-lunar.so $GLIBC       &&
  sln /lib/libdl-lunar.so $DL     &&
  sln /lib/libm-lunar.so $M       &&
  sln /lib/librt-lunar.so $RT     &&
  sln /lib/libpthread-lunar.so $PTHREAD &&
  sln /lib/libnss_files-lunar.so $NSS &&
  sln /lib/libutil-lunar.so $UTIL &&
  sln /lib/libnsl-lunar.so $NSL   &&
  sln /lib/libcrypt-lunar.so $CRYPT &&

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
  ldconfig                         