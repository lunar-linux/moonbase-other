(       
      
  echo CFLAGS:= $CFLAGS
  echo OPTS:= $OPTS
  set -x && #Let's show the logs what we've used for debug
  ./configure  --build=$BUILD          \
               --prefix=/usr           \
               --sysconfdir=/etc       \
               --localstatedir=/var    \
               --mandir=/usr/share/man \
               $OPTS                 &&
  set +x     && ##turn it off so that the logs stay readable
  make                               &&
  prepare_install                    &&
  make    install

) > $C_FIFO 2>&1 &&

( 


#lets create user and group if they are not avail
   groupadd  bind            2>/dev/null
   useradd   bind  -g  bind  2>/dev/null


  mkdir  -p                  /var/named

#lets move the "old" configuration files
  if [ -s /etc/bind/named.conf ]; then
      cp -a /etc/bind/* /var/named

  [ -s /etc/named.conf ] &&
! [ -L /etc/named.conf ] && 
  cp /etc/named.conf /var/named

#lets change the paths
      sedit "s/\/etc\/bind/\/var\/named/g" /var/named/named.conf
#lets disable the pid-file setting if any
      sedit "s/pid-/#\0/" /var/named/named.conf
      mv /etc/bind /etc/bind.old
  fi

#create the named.root
  if (dig  .  ns  >  named.root); then
      cp             named.root  /var/named
  else
#or use the default
      cp $SCRIPT_DIRECTORY/named.root /var/named
  fi


#if we do not have a named.conf already, copy the default
  SNC="$SCRIPT_DIRECTORY/named.conf"
  if [ ! -e  /var/named/named.conf  ]; then
     cp  $SNC   /var/named
  fi

#lets set the permissions
   chown  -R  bind:bind  /var/named
  
#and make the softlink!
  ln  -sf  /var/named/named.conf  /etc/

#and set the perms
  chmod 644 /var/named/named.conf
  chmod 644 /var/named/named.root
  
#lets create an rndc key if none avail  
  [  -e  /etc/bind/rndc.key    ]  ||  rndc-confgen  -a

# lets copy a sample rndc.conf if none avail
  [  -e  /etc/bind/rndc.conf ] || cp bin/rndc/rndc.conf /etc/rndc.conf.sample

if [ -e "/etc/init.d/named.sh" ]; then
  rm -f /etc/init.d/named.sh
  rm -f /etc/rc?.d/???named.sh
fi

)
