add_priv_user mail:mail &&

mkdir -p        /var/spool/mail &&
chmod 1777      /var/spool/mail &&
chown mail:mail /var/spool/mail &&

mkdir -p Local &&

if [ "$USE_X11" == "y" ]; then
  cp src/EDITME Local/Makefile
  cp exim_monitor/EDITME Local/eximon.conf
else
  grep -v "EXIM_MONITOR=" src/EDITME > Local/Makefile
fi &&

if [ "$USE_SCANNING" == "y" ]; then
  echo "WITH_CONTENT_SCAN=yes" >> Local/Makefile
fi &&

if module_installed Linux-PAM; then
  echo "SUPPORT_PAM=yes" >> Local/Makefile
  echo "EXTRALIBS=-lpam -ldl" >> Local/Makefile
fi &&

if ( module_installed mysql ) || (module_installed mariadb ); then
  echo "LOOKUP_MYSQL=yes"                     >> Local/Makefile
  echo "LOOKUP_INCLUDE=-I /usr/include/mysql" >> Local/Makefile
  echo "LOOKUP_LIBS=-lmysqlclient"            >> Local/Makefile
fi &&

if module_installed openssl; then
  echo "SUPPORT_TLS=yes"        >> Local/Makefile
  echo "USE_OPENSSL_PC=openssl" >> Local/Makefile
fi &&

if module_installed gnutls; then
  echo "SUPPORT_TLS=yes"      >> Local/Makefile
  echo "USE_GNUTLS=yes"       >> Local/Makefile
  echo "USE_GNUTLS_PC=gnutls" >> Local/Makefile
fi &&

echo "EXIM_USER=mail"                     >> Local/Makefile
echo "BIN_DIRECTORY=/usr/bin"             >> Local/Makefile
echo "CONFIGURE_FILE=/etc/mail/exim.conf" >> Local/Makefile
echo "SPOOL_DIRECTORY=/var/spool/mail"    >> Local/Makefile
echo "CFLAGS=$CFLAGS"                     >> Local/Makefile
echo "AUTH_CRAM_MD5=yes"                  >> Local/Makefile
echo "AUTH_PLAINTEXT=yes"                 >> Local/Makefile
echo "LOOKUP_NIS=yes"                     >> Local/Makefile
echo "SUPPORT_MAILDIR=yes"                >> Local/Makefile

make &&
prepare_install &&

install -Dm0644 doc/exim.8 /usr/share/man/man8/exim.8 &&
cd build-Linux-* &&
for i in exicyclog exim_checkaccess exim_dumpdb exim_lock exim_tidydb \
         exipick exiqsumm exigrep exim_dbmbuild exim exim_fixdb eximstats \
         exinext exiqgrep exiwhat; do
  install -m0755 "$i" /usr/bin
done &&

mkdir -p /etc/mail &&
cd ../src &&
cp configure.default /etc/mail/exim.conf &&
cp $SCRIPT_DIRECTORY/aliases /etc/mail/ &&

cd /usr/bin &&
for i in mailq newaliases rmail rsmtp runq sendmail; do
  ln -sf exim "$i"
done &&

# fhs compliancy
ln -sf ../bin/exim ../lib/sendmail &&

touch /etc/mail/aliases
