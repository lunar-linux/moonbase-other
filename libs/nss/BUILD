export WORKINGDIR=$PWD &&
export BUILD_OPT=1     &&
export NSS_USE_SYSTEM_SQLITE=1 &&
export NSS_ENABLE_WERROR=0 &&
export NSPR_INCLUDE_DIR=/usr/include/nspr &&
export NSPR_LIB_DIR=/usr/lib &&
export USE_SYSTEM_ZLIB=1     &&
export NSDISTMODE=copy       &&
export NSS_ENABLE_ECC=1      &&
export FREEBL_NO_DEPEND=1    &&
export PKG_CONFIG_ALLOW_SYSTEM_LIBS=1   &&
export PKG_CONFIG_ALLOW_SYSTEM_CFLAGS=1 &&

cd nss &&
cp $SCRIPT_DIRECTORY/nss-config.in nss-config.in &&
cp $SCRIPT_DIRECTORY/nss.pc.in nss.pc.in &&

sedit 's/\$(MKSHLIB) -o/\$(MKSHLIB) \$(LDFLAGS) -o/g' coreconf/rules.mk &&

if [ "`arch`" == "x86_64" ]; then
  export USE_64=1
fi &&

make &&

export NSS_LINUXDIR=$(basename `ls -d $WORKINGDIR/dist/Linux*`) &&

prepare_install &&

NSS_VMAJOR=$(grep '#define.*NSS_VMAJOR' lib/nss/nss.h | awk '{print $3}') &&
NSS_VMINOR=$(grep '#define.*NSS_VMINOR' lib/nss/nss.h | awk '{print $3}') &&
NSS_VPATCH=$(grep '#define.*NSS_VPATCH' lib/nss/nss.h | awk '{print $3}') &&

sed ./nss.pc.in \
    -e "s,%libdir%,/usr/lib,g" \
    -e "s,%prefix%,/usr,g" \
    -e "s,%exec_prefix%,/usr/bin,g" \
    -e "s,%includedir%,/usr/include/nss,g" \
    -e "s,%NSS_VERSION%,${VERSION},g" \
        > "./nss.pc" &&

mkdir -p /usr/lib/pkgconfig &&
install -v -m644 nss.pc /usr/lib/pkgconfig &&

sed ./nss-config.in \
    -e "s,@libdir@,/usr/lib,g" \
    -e "s,@prefix@,/usr/bin,g" \
    -e "s,@exec_prefix@,/usr/bin,g" \
    -e "s,@includedir@,/usr/include/nss,g" \
    -e "s,@MOD_MAJOR_VERSION@,${NSS_VMAJOR},g" \
    -e "s,@MOD_MINOR_VERSION@,${NSS_VMINOR},g" \
    -e "s,@MOD_PATCH_VERSION@,${NSS_VPATCH},g" \
       > "./nss-config" &&

install -v -m755 nss-config /usr/bin &&

cd ../dist &&

install -v -m755 ${NSS_LINUXDIR}/lib/*.so /usr/lib/ &&

# hack to fix overwriting libssl.a from openssl
install -v -m644 ${NSS_LINUXDIR}/lib/{*.chk,libc*.a,libd*.a,libf*.a,libj*.a,libn*.a,libp*.a,libsectool.a,libsmime.a,libsoftokn.a} /usr/lib/ &&

mkdir -p /usr/include/nss &&
install -v -m644 {public,private}/nss/* /usr/include/nss/
