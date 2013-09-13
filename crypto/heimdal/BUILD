
export CFLAGS+=" -I/usr/include/et" &&
export CXXFLAGS+=" -I/usr/include/et" &&


# When -O1 and --as-needed are set together for the linker you get both
#  -Wl,-O1,--as-needed and -Wl,--as-needed.  The --as-needed causes heimdal
# to fail linking.  Instead of adding 2 bad_flags to we just need a , in front
# of --as-needed to fix it.

bad_flags ",--as-needed" &&

OPTS+=" --prefix=/usr \
        --without-x \
        --libexecdir=/usr/sbin \
        --datadir=/var/lib/heimdal \
        --localstatedir=/var/lib/heimdal \
        --with-hdbdir=/var/lib/heimdal \
        --sysconfdir=/etc \
        --enable-shared \
        --with-readline=/usr \
        --with-openssl=/usr \
        --disable-otp" &&

mkdir -p $SOURCE_DIRECTORY/__heimdest/ &&

sh autogen.sh &&
default_config &&
make &&
INSTALL_CATPAGES="no" make DESTDIR=$SOURCE_DIRECTORY/__heimdest/ install &&

# Rename files that otherwise would conflict
for i in rshd telnetd ftpd; do
  mv $SOURCE_DIRECTORY/__heimdest/usr/sbin/{,k}${i} || exit 1
  mv $SOURCE_DIRECTORY/__heimdest/usr/share/man/man8/{,k}${i}.8 || exit 1
done &&

for i in rsh su telnet ftp login rcp; do
  if [ -f $SOURCE_DIRECTORY/__heimdest/usr/share/man/man1/${i}.1 ]; then
    mv $SOURCE_DIRECTORY/__heimdest/usr/share/man/man1/{,k}${i}.1 || exit 1
  fi
  mv $SOURCE_DIRECTORY/__heimdest/usr/bin/{,k}${i} || exit 1
done &&

prepare_install &&
cp -rf --remove-destination $SOURCE_DIRECTORY/__heimdest/usr / &&

for i in ksu otp; do
  [ ! -f /usr/bin/${i} ] || chmod 4711 /usr/bin/${i}
done
