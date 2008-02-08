export  SSL_BASE=SYSTEM
export  EAPI_MM=SYSTEM

APACHE_CONFIGURE=\
"./configure  --prefix=/usr
              --sysconfdir=/etc/httpsd
              --localstatedir=/var/lib/httpsd
              --logfiledir=/var/log/httpsd
              --proxycachedir=/var/cache/httpsd
              --runtimedir=/var/run/httpsd
              --datadir=/usr/share/httpsd
              --enable-module=ssl
              --enable-module=most
              --enable-shared=max
              --enable-module=auth_db
              --enable-module=mmap_static
              --disable-module=auth_dbm
              --with-layout=GNU"

case  $CERTIFICATE  in

  y|Y|j|J)

    cd  mod_ssl-$VERSION                          &&
    ./configure  --with-apache=../apache_1.3.41   &&
    cd  ../apache_1.3.41                          &&
    $APACHE_CONFIGURE                             &&
    make  certificate  TYPE="custom"              &&
    echo  "CERTIFICATE=done"  >>  $MODULE_CONFIG  &&
    (  default_make  ) > $C_FIFO 2>&1
  ;;

  *)

    (  cd  mod_ssl-$VERSION                         &&
       ./configure  --with-apache=../apache_1.3.41  &&
       cd  ../apache_1.3.41                         &&
       $APACHE_CONFIGURE                            &&
       make  certificate  TYPE="existing"            \
             CRT=/etc/httpsd/ssl.crt/server.crt     &&
       default_make
    ) > $C_FIFO 2>&1
  ;;

esac  &&

(

  if [ -e "/etc/init.d/apache_modssl.sh" ] ; then
    rm -f /etc/init.d/apache_modssl.sh
    rm -f /etc/rc?.d/???apache_modssl.sh
  fi

)
