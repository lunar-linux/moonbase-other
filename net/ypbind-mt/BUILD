(

 ./configure  --prefix=/usr            \
              --mandir=/usr/share/man  \
              $OPTS                    &&
  make                       &&
  prepare_install            &&
  make    install

) > $C_FIFO 2>&1  &&  (

if [ -e "/etc/init.d/ypbind.sh" ]; then
  rm -f /etc/init.d/ypbind.sh
  rm -f /etc/rc?.d/???ypbind.sh
fi

if ! [ -e /etc/yp.conf ]; then
   cp etc/yp.conf /etc/yp.conf 
fi

)
