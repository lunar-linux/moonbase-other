(

  ./configure   --build=$BUILD                    \
                --prefix=/usr                     \
		--bindir=/usr/sbin                \
		--sbindir=/usr/sbin               \
		--datadir=/usr/share              \
		--infodir=/usr/share/info         \
		--mandir=/usr/share/man           \
		--sysconfdir=/etc                 \
		--localstatedir=/var/cache        &&
  prepare_install
  make                                            &&
  make install                                    &&
  
  if [ -e "/etc/init.d/ntp.sh" ]; then
     rm -f /etc/init.d/ntp.sh
  fi                                              &&

  if [ -e "/etc/rc?.d/*ntp.sh" ]; then
     rm -f /etc/rc?.d/*ntp.sh
  fi                                              &&

  if [ ! -e /usr/share/doc/$MODULE ]; then
     mkdir -p /usr/share/doc/$MODULE
  fi                                              &&
  
  cp -rvp html /usr/share/doc/$MODULE             &&
  
  if [ -e /etc/config.d/ntp.conf ]; then
     mv /etc/config.d/ntp.conf /etc/ntp.conf
  fi
 
  if [ ! -e /etc/ntp.conf ]
   then
   cat > /etc/ntp.conf << EOF
# refer to 
# file:///usr/share/docs/$MODULE/html/config.html 
# and
# file:///usr/share/docs/$MODULE/html/confopt.htm 
# or
# http://www.eecis.udel.edu/~ntp/documentation.html 
server ntp.your.isp
peer local.machine
EOF
   fi
   
) > $C_FIFO 2>&1
