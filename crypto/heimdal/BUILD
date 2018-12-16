export CFLAGS+=" -I/usr/include/et" &&
export CXXFLAGS+=" -I/usr/include/et" &&

# When -O1 and --as-needed are set together for the linker you get both
#  -Wl,-O1,--as-needed and -Wl,--as-needed. The --as-needed causes heimdal
# to fail linking.  Instead of adding 2 bad_flags to we just need a , in front
# of --as-needed to fix it.

bad_flags "-Wl,--as-needed" &&

OPTS+=" --prefix=/usr \
        --without-x \
        --libexecdir=/usr/sbin \
        --datadir=/var/lib/heimdal \
        --localstatedir=/var/lib/heimdal \
        --with-hdbdir=/var/lib/heimdal \
        --sysconfdir=/etc \
        --enable-shared \
        --enable-kcm \
        --disable-osfc2 \
        --with-readline=/usr \
        --with-openssl=/usr \
        --with-sqlite3=/usr \
        --enable-pthread-support"

mkdir -p $SOURCE_DIRECTORY/__heimdest/ &&

default_config &&
make &&
INSTALL_CATPAGES="no" make DESTDIR=$SOURCE_DIRECTORY/__heimdest/ install &&

for i in su ; do
  if [ -f $SOURCE_DIRECTORY/__heimdest/usr/share/man/man1/${i}.1 ]; then
    mv -f $SOURCE_DIRECTORY/__heimdest/usr/share/man/man1/{,k}${i}.1
  fi &&
  mv -f $SOURCE_DIRECTORY/__heimdest/usr/bin/{,k}${i}
done &&

prepare_install &&
cp -rf --remove-destination $SOURCE_DIRECTORY/__heimdest/usr / &&

for i in ksu otp; do
  [ ! -f /usr/bin/${i} ] || chmod 4711 /usr/bin/${i}
done
