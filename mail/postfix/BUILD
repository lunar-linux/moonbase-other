add_priv_user postdrop:postdrop &&
add_priv_user postfix:postfix &&
add_priv_user mail:mail &&
QUEUE=/var/spool/postfix &&

mkdir -m1777 -p /var/spool/mail &&
chown mail:mail /var/spool/mail &&

AUXLIBS="$LDFLAGS" &&
CCARGS="$CFLAGS" &&

if in_depends $MODULE openldap; then
  AUXLIBS=" -lldap -llber"
  CCARGS+=" -DHAS_LDAP"
fi &&

if in_depends $MODULE Linux-PAM; then
  AUXLIBS=$AUXLIBS" -lpam -lpam_misc"
  CCARGS+=" -DHAS_PAM"
fi &&

if in_depends $MODULE sqlite; then
  AUXLIBS=$AUXLIBS" -lsqlite3"
  CCARGS+=" -DHAS_SQLITE"
fi &&

if in_depends $MODULE mysql; then
  AUXLIBS=$AUXLIBS" -lmysqlclient -lz -lm"
  CCARGS+=" -DHAS_MYSQL -I/usr/include/mysql"
fi &&

if in_depends $MODULE postgresql; then
  AUXLIBS=$AUXLIBS" -lpq"
  CCARGS+=" -DHAS_PGSQL -I/usr/include/postgresql"
fi &&

if in_depends $MODULE tinycdb; then
  AUXLIBS=$AUXLIBS" -lcdb"
  CCARGS+=" -DHAS_CDB"
fi &&

if in_depends $MODULE cyrus-sasl; then
  AUXLIBS=$AUXLIBS" -lsasl2 -lssl -lcrypto"
  CCARGS+=" -DUSE_CYRUS_SASL -DUSE_SASL_AUTH -I/usr/include/sasl -DUSE_TLS -I/usr/include/openssl"
fi &&

if in_depends $MODULE dovecot; then
  AUXLIBS=$AUXLIBS" -lssl -lcrypto"
  CCARGS+=' -DUSE_SASL_AUTH -DDEF_SERVER_SASL_TYPE=\"dovecot\" -DUSE_TLS -I/usr/include/openssl'
fi &&

AUXLIBS+=" -lpthread" &&
echo CCARGS=$CCARGS   &&
echo AUXLIBS=$AUXLIBS &&

make makefiles DEBUG='' \
               pie=yes \
               shared=yes \
               CCARGS="$CCARGS" \
               AUXLIBS="$AUXLIBS" \
               OPT="$CFLAGS $LDFLAGS" &&
make &&
prepare_install &&

LD_LIBRARY_PATH=lib:$LD_LIBRARY_PATH sh postfix-install -non-interactive                   \
       config_directory=/etc/postfix       \
       daemon_directory=/usr/lib/postfix   \
       command_directory=/usr/bin          \
       queue_directory=$QUEUE              \
       sendmail_path=/usr/bin/sendmail     \
       newaliases_path=/usr/bin/newaliases \
       mailq_path=/usr/bin/mailq           \
       mail_owner=postfix                  \
       setgid_group=postdrop               \
       manpage_directory=/usr/share/man    \
       sample_directory=/usr/share/doc/postfix/samples \
       readme_directory=/usr/share/doc/postfix &&

ln -sf /usr/bin/sendmail /usr/lib/sendmail &&
ln -sf postfix/aliases /etc/aliases
