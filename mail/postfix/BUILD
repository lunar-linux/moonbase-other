(

GRP=`which groupadd`                                                  &&
USER=`which useradd`                                                  &&
QUEUE=/var/spool/postfix                                              &&

perl -e '$gid=getgrnam("postdrop"); exit 1 if ! defined( $gid )' || {
    echo "Adding postdrop group to system"
    $GRP postdrop
}                                                                     &&
                                                                                         
perl -e '$gid=getgrnam("postfix"); exit 1 if ! defined( $gid )' || {
    echo "Adding postfix group to system"
    $GRP postfix   
}                                                                     &&
                                                                                        
perl -e '$uid=getpwnam("postfix"); exit 1 if ! defined( $uid )' || {
    echo "Adding postfix user to system"
    $USER -d $QUEUE -s /bin/true -g postfix -M postfix
}                                                                     &&

perl -e '$uid=getpwnam("mail"); exit 1 if ! defined( $uid )' || {
    echo "Adding mail user to system"
    $USER mail -g mail
}                                                                     &&

  mkdir  -p         /var/spool/mail                                   &&
  chmod  1777       /var/spool/mail                                   &&
  chown  mail:mail  /var/spool/mail                                   &&


  if  module_installed  openldap
  then  AUXLIBS="-lldap -llber"
         CCARGS="-DHAS_LDAP"
  fi                                                                  &&

  if  module_installed  Linux-PAM
  then  AUXLIBS=$AUXLIBS" -lpam -lpam_misc"
         CCARGS=$CCARGS" -DHAS_PAM"
  fi                                                                  &&

  if  module_installed mysql
  then  AUXLIBS=$AUXLIBS" -lmysqlclient -lz -lm"
         CCARGS=$CCARGS" -DHAS_MYSQL -I/usr/include/mysql"
  fi                                                                  &&

  if  module_installed cyrus-sasl
  then  AUXLIBS=$AUXLIBS" -lsasl2 -lssl -lcrypto"
         CCARGS=$CCARGS" -DUSE_SASL_AUTH -I/usr/include/sasl -DHAS_SSL -I/usr/include/openssl"
  fi                                                                  &&

echo CCARGS=$CCARGS                                                   &&
echo AUXLIBS=$AUXLIBS                                                 &&
sleep 1                                                               &&
  
#  make  "CC=gcc"               \
#        "OPT=$CFLAGS"          \
#        "AUXLIBS=$AUXLIBS"     \
#        "CCARGS=$CCARGS"       &&
  cp /var/spool/lunar/$SOURCE $BUILD_DIRECTORY        &&
  cd $BUILD_DIRECTORY                                 &&
  tar xzvf $SOURCE                                    &&
  true                                                &&
  cd $SOURCE_DIRECTORY         &&
  echo $PWD                    &&
  sleep 2                      &&
  make  "OPT=$CFLAGS"          \
        "AUXLIBS=$AUXLIBS"     \
        "CCARGS=$CCARGS"       &&

  prepare_install              &&

sh postfix-install -non-interactive                    \
       config_directory=/etc/postfix                   \
       daemon_directory=/usr/libexec/postfix           \
       command_directory=/usr/sbin                     \
       queue_directory=$QUEUE                          \
       sendmail_path=/usr/sbin/sendmail                \
       newaliases_path=/usr/bin/newaliases             \
       mailq_path=/usr/bin/mailq                       \
       mail_owner=postfix                              \
       setgid_group=postdrop                           \
       manpage_directory=/usr/share/man                \
       sample_directory=/usr/share/doc/postfix/samples \
       readme_directory=/usr/share/doc/postfix         &&

  ln  -sf   ../sbin/sendmail   \
           /usr/lib/sendmail   &&

  ln  -sf  postfix/aliases     \
              /etc/aliases

) > $C_FIFO 2>&1  &&  (

  if [ -e "/etc/init.d/postfix.sh" ]; then
     rm -f /etc/init.d/postfix.sh
     rm -f /etc/rc?.d/???postfix.sh
  fi
  
  sedit  "s:#mail_spool_directory = /var/spool/mail:mail_spool_directory = /var/spool/mail:"  \
         /etc/postfix/main.cf

)
