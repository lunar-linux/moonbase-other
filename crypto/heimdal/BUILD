export CFLAGS+=" -I/usr/include/et" &&
export CXXFLAGS+=" -I/usr/include/et" &&

OPTS+=" --prefix=/usr \
        --sbindir=/usr/bin \
        --sysconfdir=/etc \
        --libexecdir=/usr/bin \
        --datadir=/var/lib/heimdal \
        --localstatedir=/var/lib/heimdal \
        --with-hdbdir=/var/lib/heimdal \
        --disable-otp \
        --enable-kcm \
        --enable-shared \
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

if [ ! -f "/etc/krb5.conf" ]; then
  install -Dm664 krb5.conf /etc/krb5.conf
  install -Dm664 krb5.conf /etc/krb5.conf.new
fi
