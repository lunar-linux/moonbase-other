(

  cp   audio/midi_drivers/forked_player.cc  \
       audio/midi_drivers/forked_player.cc.original

  sed  's:"playmidi","-v","-v","-e":"playmus","playmus","-r","44100":'  \
       audio/midi_drivers/forked_player.cc.original  >     \
       audio/midi_drivers/forked_player.cc

  ./configure  --prefix=/usr         \
               --sysconfdir=/etc     \
               --localstatedir=/var  \
               --bindir=/usr/games   \
               $OPTS                 &&
  make                               &&
  prepare_install                    &&
  make    install

) > $C_FIFO 2>&1  &&  (

  cp  $SCRIPT_DIRECTORY/exult.cfg  \
             /usr/share/exult

  cd  sfx
  ../tools/expack -i drbg
  ../tools/expack -i drsi
  cp  drbgsfx.flx  /usr/share/exult
  cp  drsisfx.flx  /usr/share/exult

)
