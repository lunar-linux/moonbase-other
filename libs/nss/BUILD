(
  
  patch_it $SOURCE_CACHE/$SOURCE2 1 &&

  export WORKINGDIR=$PWD  &&
  export BUILD_OPT=1      &&
  export NSS_USE_SYSTEM_SQLITE=1 &&
  export NSPR_INCLUDE_DIR=`pkg-config --cflags-only-I nspr | sed 's/-I//'` &&
  export NSPR_LIB_DIR=`pkg-config --libs-only-L nspr | sed 's/-L//'` &&
  export USE_SYSTEM_ZLIB=1 &&
  export NSDISTMODE=copy &&
  export NSS_ENABLE_ECC=1 &&
  export FREEBL_NO_DEPEND=1 &&
  export PKG_CONFIG_ALLOW_SYSTEM_LIBS=1 &&
  export PKG_CONFIG_ALLOW_SYSTEM_CFLAGS=1 &&

  cd mozilla/security/coreconf &&
  sedit 's/\$(MKSHLIB) -o/\$(MKSHLIB) \$(LDFLAGS) -o/g' rules.mk &&

  if [ "`arch`" == "x86_64" ]; then
    export USE_64=1
  fi &&

  make &&
  cd ../dbm &&
  make &&
  cd ../nss &&
  make &&
  cd ../..                &&

  export NSS_LINUXDIR=$(basename `ls -d $WORKINGDIR/mozilla/dist/Linux*`)

  prepare_install &&

  install -v -m755 security/nss/config/nss-config /usr/bin &&

  mkdir -p /usr/lib/pkgconfig &&
  install -v -m644 security/nss/config/nss.pc /usr/lib/pkgconfig &&

  cd dist &&

  install -v -m755 ${NSS_LINUXDIR}/lib/*.so /usr/lib/ &&
  install -v -m644 ${NSS_LINUXDIR}/lib/{*.chk,*.a} /usr/lib/ &&
  mkdir -p /usr/include/nss &&
  install -v -m644 {public,private}/nss/* /usr/include/nss/

) > $C_FIFO 2>&1
