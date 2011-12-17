(
  # The fortify compiler option cause the build to fail
  bad_flags -D_FORTIFY_SOURCE=2 &&

# This sedit takes care of Bug Report 398 submitted by Striker.
  sedit "s:/tmp:$SOURCE_DIRECTORY/tmp:g" scripts/test-installation.pl &&
  mkdir -p $SOURCE_DIRECTORY/tmp &&

  export CC_OPTS=( Pipe ) &&

  if module_installed kernel-headers; then
  KVER=`installed_version kernel-headers`
  else
  KVER=`installed_version kernel-headers-2.6`
  fi &&

  # There is no other option but nptl
  OPTS+=" --enable-add-ons=nptl,libidn --with-__thread --with-tls --disable-profile --enable-kernel=$KVER" &&

  if [ -n "$MAKES" ] && [ "$MAKES" -gt 1 ] ; then
    sedit "s/# PARALLELMFLAGS = -j 4/PARALLELMFLAGS = -j $MAKES/" Makefile.in
  fi &&

  export CC=gcc &&

  # Don't fully strip libc
  if [[ "$LDFLAGS" == *-s* ]] ; then
    STRIP=y
  fi &&
  unset LDFLAGS &&

  patch_it $SOURCE2 1 &&
  patch_it $SOURCE3 1 &&
  patch_it $SOURCE4 1 &&
  patch_it $SOURCE5 1 &&
  patch_it $SOURCE6 1 &&

  # Fixes nvidia-settings and other apps segfault http://www.nvnews.net/vbulletin/showpost.php?p=2501574
  patch_it $SOURCE7 1 &&

  sedit 's/^# \(.* := rpcinfo\)/\1/p'  sunrpc/Makefile &&
  sedit 's/test-netdb tst-nss-test1/test-netdb/' nss/Makefile &&
  sedit '/libnss_test1/d' shlib-versions &&

  INSTALL_ROOT=$SOURCE_DIRECTORY/glibcroot &&
  mkdir -p $INSTALL_ROOT &&
  cd $INSTALL_ROOT &&

  OPTS+=" --with-headers=/usr/include" &&

  ../configure --prefix=/usr              \
               --infodir=/usr/share/info  \
               --mandir=/usr/share/man    \
               --with-elf                 \
               --without-gd               \
               --without-cvs              \
               --enable-shared            \
               --disable-multi-arch       \
               $OPTS                     &&

  # explicitly exit here since the following code unsets $?
  make || exit 1 &&

  # Preserve the old glibc temporarily
  LD=/lib/ld-linux.so.2         &&
  GLIBC=/lib/libc.so.6          &&
  DL=/lib/libdl.so.2            &&
  M=/lib/libm.so.6              &&
  RT=/lib/librt.so.1            &&
  PTHREAD=/lib/libpthread.so.0  &&
  NSS=/lib/libnss_files.so.2    &&
  UTIL=/lib/libutil.so.1        &&
  NSL=/lib/libnsl.so.1          &&
  CRYPT=/lib/libcrypt.so.1      &&

  case "`arch`" in
    alpha)
          GLIBC=/lib/libc.so.6.1  &&
          DL=/lib/libdl.so.2.1    &&
          M=/lib/libm.so.6.1
          ;;
     ppc)
          LD=/lib/ld.so.1  &&
          DL=/lib/libdl.so.2
          ;;
     *)
          DL=/lib/libdl.so.2
          ;;
  esac &&

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
  prepare_install  &&

  # And now we install the new
  make install  &&

  # Now optionally perform debug symbol stripping only
  if [ "$STRIP" == "y" ] ; then
    for FN in ld-$VERSION.so \
        lib{anl,BrokenLocale,c,crypt,dl,m,nsl,util,pthread,resolv}-$VERSION.so \
        libnss_{compat,files,hesiod,nis,nisplus}-$VERSION.so \
        lib{memusage,pcprofile,SegFault,thread_db-1.0}.so ; do
      strip -S /lib/$FN
    done &&
    for FN in "/usr/lib/gconv/*.so" ; do
      strip -S $FN
    done
  fi  &&

  # Added a symlink for ash and others
  ln -sf /usr/lib/libbsd-compat.a /usr/lib/libbsd.a  &&

  # Rebuild the ld cache
  rm -f /etc/ld.so.cache 2>/dev/null  &&
  ldconfig                            &&

  # Remove the temporary libc
  rm /lib/{ld,lib{c,dl,m,rt,pthread,nss_files,util,nsl,crypt}}-lunar.so  &&

  # Generate locale info
  if [ -z "$GLIBC_LOCALES" ]; then
    make localedata/install-locales || exit 1
  else
    devoke_installwatch &&
    for LOCALE in $GLIBC_LOCALES; do
      INPUTFILE=$(echo $LOCALE | cut -d/ -f1 | sed -e 's:\..*$::g') &&
      OUTPUTFILE=$(echo $LOCALE | cut -d/ -f1) &&
      CHARMAP=$(echo  $LOCALE | cut -d/ -f2) &&
      mkdir -p /usr/lib/locale/$OUTPUTFILE &&
      echo "localedef -i $INPUTFILE -f $CHARMAP $OUTPUTFILE" &&
      localedef -i $INPUTFILE -f $CHARMAP $OUTPUTFILE
    done
    invoke_installwatch &&
    touch /usr/lib/locale/locale-archive
  fi

) > $C_FIFO 2>&1 && ldconfig
