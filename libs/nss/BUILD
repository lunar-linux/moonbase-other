(
  export WORKINGDIR=$PWD  &&
  export BUILD_OPT=1      &&

  patch_it $SOURCE2 1     &&

  cd mozilla/security/nss &&
  make nss_build_all      &&
  cd ../..                &&

  export NSS_LINUXDIR=$(basename `ls -d $WORKINGDIR/mozilla/dist/Linux*`)

  prepare_install &&

  install -v -m755 nsprpub/$NSS_LINUXDIR/config/nspr-config \
                   security/nss/cmd/config/nss-config \
		   /usr/bin &&
  
  mkdir -p /usr/lib/pkgconfig &&
  install -v -m644 nsprpub/lib/pkgconfig/nspr.pc \
                   security/nss/lib/pkgconfig/nss.pc \
		   /usr/lib/pkgconfig &&

  cd dist &&

  install -v -m755 ${NSS_LINUXDIR}/lib/*.so /usr/lib &&
  install -v -m644 ${NSS_LINUXDIR}/lib/{*.chk,libcrmf.a} /usr/lib &&

  mkdir -p /usr/include/{nss,nspr} &&
  install -v -m644 {public,private}/nss/* /usr/include/nss/ &&
  cp -v -RL ${NSS_LINUXDIR}/include/* /usr/include/nspr/ &&

  chmod -v 0644 /usr/include/nspr/prvrsion.h

) > $C_FIFO 2>&1
