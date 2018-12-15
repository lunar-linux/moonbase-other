OPTS+=" --sbindir=/usr/bin"

./configure --prefix=/usr \
            --sysconfdir=/etc/courier-imap \
            --localstatedir=/var/spool/courier-imap \
            --datadir=/etc/courier-imap/cert \
            --disable-root-check \
            --mandir=/usr/share/man \
            --with-piddir=/run/courier \
            --with-notice=unicode \
            $OPTS &&

sedit 's:/usr/share/courier-imap/:/etc/courier/cert/:g' imap/mk* imap/*.cnf imap/*.dist &&
sedit 's:pam_pwdb:pam_unix:g' imap/*pam &&

make &&
prepare_install &&
make install-strip &&

mkdir -p /etc/courier/cert &&
make install-configure &&
cp -av imap/*.dist /etc/courier/ &&
cp -av imap*.cnf /etc/courier/ &&

for file in /etc/courier/*.dist; do
  if [ ! -f /etc/courier/$(basename $file .dist) ]; then
    cp $file /etc/courier/$(basename $file .dist)
  fi || exit 1
done || exit 1
