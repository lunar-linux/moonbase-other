unset CC CXX
(
   default_build  

) > $C_FIFO 2>&1 &&

(

  mkdir  -p  /var/log/xinetd

  if [ -e "/etc/init.d/xinetd.sh" ]; then
     rm -f /etc/init.d/xinetd.sh
     rm -f /etc/rc?.d/???xinetd.sh
  fi

  ID="includedir  /etc/xinetd.d"
  mkdir  -p       /etc/xinetd.d

  [  -f           /etc/xinetd.conf  ]  ||
  echo  "$ID"  >  /etc/xinetd.conf

)
