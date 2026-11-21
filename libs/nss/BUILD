# All checks and the build happen before prepare_install. On failure,
# the installed version of NSS is left untouched by this recipe.
cd "$SOURCE_DIRECTORY" &&

if ! pkg-config --atleast-version=4.41 nspr; then
  echo "NSS 3.134 requires NSPR >= 4.41 (installed: $(pkg-config --modversion nspr 2>/dev/null || echo unknown))" >&2
  exit 1
fi

pkg-config --exists sqlite3 &&

export BUILD_OPT=1
export NSS_USE_SYSTEM_SQLITE=1
export NSS_ENABLE_WERROR=0
export NSS_DISABLE_GTESTS=1
export NSPR_INCLUDE_DIR=/usr/include/nspr
export NSPR_LIB_DIR=/usr/lib
export USE_SYSTEM_ZLIB=1
export ZLIB_LIBS=-lz
export NSDISTMODE=copy
export NSS_ENABLE_ECC=1
export FREEBL_NO_DEPEND=1
export FREEBL_LOWHASH=1
export PKG_CONFIG_ALLOW_SYSTEM_LIBS=1
export PKG_CONFIG_ALLOW_SYSTEM_CFLAGS=1

if [ "$(uname -m)" = x86_64 ]; then
  export USE_64=1
fi

# Use the upstream Makefile directly. The old 2020 standalone patch is
# unnecessary when invoking explicit 'all' and 'latest' targets.
sedit 's/\$(MKSHLIB) -o/\$(MKSHLIB) \$(LDFLAGS) -o/g' nss/coreconf/rules.mk && 
make -C nss all &&
make -C nss latest &&

# Upstream writes one precise build directory name to dist/latest.
[ -s dist/latest ] &&
IFS= read -r objdir < dist/latest &&
case "$objdir" in
  Linux*.OBJ) ;;
  *) echo "Unexpected NSS dist/latest: $objdir" >&2; exit 1 ;;
esac &&

dist_dir="$SOURCE_DIRECTORY/dist/$objdir"
[ -d "$dist_dir/lib" ] && [ -d "$SOURCE_DIRECTORY/dist/public/nss" ] &&

# NSS shared libraries and FIPS integrity files must exist before
# Lunar removes the previously installed version.
for name in libnss3.so libnssutil3.so libssl3.so libsmime3.so \
            libsoftokn3.so libfreebl3.so libnssckbi.so \
            libsoftokn3.chk libfreebl3.chk; do
  [ -f "$dist_dir/lib/$name" ] || {
    echo "Missing NSS output: $name" >&2
    exit 1
  }
done &&

nsprver=$(pkg-config --modversion nspr) &&
nss_vmajor=$(awk '/^#define[[:space:]]+NSS_VMAJOR[[:space:]]/ {print $3; exit}' nss/lib/nss/nss.h)
nss_vminor=$(awk '/^#define[[:space:]]+NSS_VMINOR[[:space:]]/ {print $3; exit}' nss/lib/nss/nss.h)
nss_vpatch=$(awk '/^#define[[:space:]]+NSS_VPATCH[[:space:]]/ {print $3; exit}' nss/lib/nss/nss.h)
[ -n "$nss_vmajor" ] && [ -n "$nss_vminor" ] && [ -n "$nss_vpatch" ] && 

# Use Mozilla's current templates instead of maintaining two old copies.
sed nss/pkg/pkg-config/nss.pc.in \
  -e 's|%prefix%|/usr|g' \
  -e 's|%exec_prefix%|${prefix}|g' \
  -e 's|%libdir%|/usr/lib|g' \
  -e 's|%includedir%|/usr/include/nss|g' \
  -e "s|%NSPR_VERSION%|$nsprver|g" \
  -e "s|%NSS_VERSION%|$VERSION|g" > nss.pc &&

sed nss/pkg/pkg-config/nss-config.in \
  -e 's|@prefix@|/usr|g' \
  -e 's|@exec_prefix@|/usr|g' \
  -e 's|@libdir@|/usr/lib|g' \
  -e 's|@includedir@|/usr/include/nss|g' \
  -e "s|@MOD_MAJOR_VERSION@|$nss_vmajor|g" \
  -e "s|@MOD_MINOR_VERSION@|$nss_vminor|g" \
  -e "s|@MOD_PATCH_VERSION@|$nss_vpatch|g" > nss-config &&

pkg-config --validate ./nss.pc &&
[ -s nss-config ] &&

# All source/build preflights have passed. Only now begin the Lunar install.
prepare_install &&

install -Dm644 nss.pc /usr/lib/pkgconfig/nss.pc &&
install -Dm755 nss-config /usr/bin/nss-config &&

for name in libnss3.so libnssutil3.so libssl3.so libsmime3.so \
            libsoftokn3.so libfreebl3.so libnssckbi.so \
            libnssdbm3.so libnsssysinit.so libfreeblpriv3.so; do
  if [ -f "$dist_dir/lib/$name" ]; then
    install -Dm755 "$dist_dir/lib/$name" "/usr/lib/$name"
  fi
done &&

for file in "$dist_dir"/lib/*.chk; do
  [ -f "$file" ] || continue
  install -Dm644 "$file" "/usr/lib/${file##*/}"
done &&

# Preserve the old Lunar static NSS libraries when they are actually built.
# Never install libssl.a: that file belongs to OpenSSL.
for file in "$dist_dir"/lib/{libc*.a,libd*.a,libf*.a,libn*.a,libp*.a,libsectool.a,libsmime.a,libsoftokn.a}; do
  [ -f "$file" ] || continue
  case "${file##*/}" in libcrypto.a|libssl.a) continue ;; esac
  install -Dm644 "$file" "/usr/lib/${file##*/}"
done &&

install -d /usr/include/nss || exit 1
for file in "$SOURCE_DIRECTORY"/dist/{public,private}/nss/*.h; do
  [ -f "$file" ] || continue
  install -m644 "$file" /usr/include/nss/
done
