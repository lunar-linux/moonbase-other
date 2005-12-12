(

  add_priv_user postdrop:postdrop    &&
  add_priv_user postfix:postfix      &&
  add_priv_user mail:mail            &&
  QUEUE=/var/spool/postfix           &&

  mkdir  -p         /var/spool/mail  &&
  chmod  1777       /var/spool/mail  &&
  chown  mail:mail  /var/spool/mail  &&

  if module_installed openldap ; then
    AUXLIBS="-lldap -llber"
    CCARGS="-DHAS_LDAP"
  fi  &&

  if module_installed Linux-PAM ; then
    AUXLIBS=$AUXLIBS" -lpam -lpam_misc"
    CCARGS=$CCARGS" -DHAS_PAM"
  fi  &&

  if module_installed mysql ; then
    AUXLIBS=$AUXLIBS" -lmysqlclient -lz -lm"
    CCARGS=$CCARGS" -DHAS_MYSQL -I/usr/include/mysql"
  fi  &&

  if module_installed postgresql ; then
    AUXLIBS=$AUXLIBS" -lpq"
    CCARGS=$CCARGS" -DHAS_PGSQL -I/usr/include/pgsql"
  fi  &&

  if module_installed cyrus-sasl ; then
    AUXLIBS=$AUXLIBS" -lsasl2 -lssl -lcrypto"
    CCARGS=$CCARGS" -DUSE_SASL_AUTH -I/usr/include/sasl -DUSE_TLS -I/usr/include/openssl"
  fi  &&

  AUXLIBS=$AUXLIBS" -lpthread"
  echo CCARGS=$CCARGS      &&
  echo AUXLIBS=$AUXLIBS    &&
  
  make  "OPT=$CFLAGS"       \
        "AUXLIBS=$AUXLIBS"  \
        "CCARGS=$CCARGS"   &&

  prepare_install          &&

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

  ln  -sf   ../sbin/sendmail   \
           /usr/lib/sendmail  &&

  ln  -sf  postfix/aliases  \
              /etc/aliases

  if [ -e "/etc/init.d/postfix.sh" ]; then
     rm -f /etc/init.d/postfix.sh
     rm -f /etc/rc?.d/???postfix.sh
  fi

) > $C_FIFO 2>&1
