(

  sedit "s/MANDIR=\"\$PREFIX\/man/MANDIR=\"\$PREFIX\/share\/man/" configure
  sedit "s/^ftp/#\0/" etc.sample/inetd.conf
  sedit "s/^telnet/#\0/" etc.sample/inetd.conf
  sedit "s/^login/#\0/" etc.sample/inetd.conf
  sedit "s/^finger/#\0/" etc.sample/inetd.conf
  sedit "s/^ident/#\0/" etc.sample/inetd.conf
  sedit "s/^ntalk/#\0/" etc.sample/inetd.conf
  rm etc.sample/hosts.equiv
  cat > etc.sample/ftpusers << EOF
# list of users disallowed any ftp access.
bin
bind
daemon
ftp
games
kmem
lp
mail
man
news
nobody
operator
pop
proxy
root
sync
sys
toor
tty
uucp
#
EOF

  ./configure  --prefix=/usr  &&
  make                        &&
  prepare_install             &&
  make    install

) > $C_FIFO 2>&1  &&

(

  cd  etc.sample
  for	FILE  in  `ls`;  do
    if    [  !  -e  /etc/$FILE      ]  &&
          [  "$FILE"  !=  "README"  ]
    then  cp  $FILE  /etc
    fi
  done

  if [ -e "/etc/init.d/inetd.sh" ]; then
    rm -f /etc/init.d/inetd.sh
    rm -f /etc/rc?.d/???inetd.sh
  fi

)
