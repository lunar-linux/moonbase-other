(

  sedit "s:#mail_spool_directory = .*:mail_spool_directory = /var/spool/mail:" conf/main.cf

  add_priv_user postdrop:postdrop    &&
  add_priv_user postfix:postfix      &&
  add_priv_user mail:mail            &&
  QUEUE=/var/spool/postfix           &&

  mkdir  -m1777 -p  /var/spool/mail  &&
  chown  mail:mail  /var/spool/mail  &&

  AUXLIBS="$LDFLAGS" &&
  CCARGS="$CFLAGS" &&

  if in_depends $MODULE openldap ; then
    AUXLIBS="-lldap -llber"
    CCARGS="-DHAS_LDAP"
  fi  &&

  if in_depends $MODULE Linux-PAM ; then
    AUXLIBS=$AUXLIBS" -lpam -lpam_misc"
    CCARGS=$CCARGS" -DHAS_PAM"
  fi  &&

  if in_depends $MODULE mysql ; then
    AUXLIBS=$AUXLIBS" -lmysqlclient -lz -lm"
    CCARGS=$CCARGS" -DHAS_MYSQL -I/usr/include/mysql"
  fi  &&

  if in_depends $MODULE postgresql ; then
    AUXLIBS=$AUXLIBS" -lpq"
    CCARGS=$CCARGS" -DHAS_PGSQL -I/usr/include/pgsql"
  fi  &&

  if in_depends $MODULE cyrus-sasl ; then
    AUXLIBS=$AUXLIBS" -lsasl2 -lssl -lcrypto"
    CCARGS=$CCARGS" -DUSE_CYRUS_SASL -DUSE_SASL_AUTH -I/usr/include/sasl -DUSE_TLS -I/usr/include/openssl"
  fi  &&

  if in_depends $MODULE dovecot ; then
    AUXLIBS=$AUXLIBS" -lssl -lcrypto"
    CCARGS=$CCARGS' -DUSE_SASL_AUTH -DDEF_SERVER_SASL_TYPE=\"dovecot\" -DUSE_TLS -I/usr/include/openssl'
  fi  &&

  AUXLIBS=$AUXLIBS" -lpthread"
  echo CCARGS=$CCARGS      &&
  echo AUXLIBS=$AUXLIBS    &&

  make "OPT=$CFLAGS" "AUXLIBS=$AUXLIBS" "CCARGS=$CCARGS"  &&
  prepare_install  &&

  sh postfix-install -non-interactive                   \
       config_directory=/etc/postfix                    \
       daemon_directory=/usr/libexec/postfix            \
       command_directory=/usr/sbin                      \
       queue_directory=$QUEUE                           \
       sendmail_path=/usr/sbin/sendmail                 \
       newaliases_path=/usr/bin/newaliases              \
       mailq_path=/usr/bin/mailq                        \
       mail_owner=postfix                               \
       setgid_group=postdrop                            \
       manpage_directory=/usr/share/man                 \
       sample_directory=/usr/share/doc/postfix/samples  \
       readme_directory=/usr/share/doc/postfix         &&

  ln -sf ../sbin/sendmail /usr/lib/sendmail  &&
  ln -sf postfix/aliases /etc/aliases

) > $C_FIFO 2>&1
