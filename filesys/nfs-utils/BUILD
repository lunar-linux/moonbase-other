unalias  make

(

  ( source /var/lib/lunar/unset.sh && ./configure  --prefix=/usr  --mandir=/usr/share/man \
    --disable-nfsv4 --disable-gss )  &&

  ( source /var/lib/lunar/unset.sh && make )  &&
  prepare_install  &&
  ( source /var/lib/lunar/unset.sh && make    install ) &&

  if [ -e "/etc/init.d/nfslock.sh" ]; then
     rm -f /etc/init.d/nfslock.sh
     rm -f /etc/rc?.d/???nfslock.sh
  fi  &&

  if [ -e "/etc/init.d/nfs.sh" ]; then
    rm -f /etc/init.d/nfs.sh
    rm -f /etc/rc?.d/???nfs.sh
  fi

) > $C_FIFO 2>&1
