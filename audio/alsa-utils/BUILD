(

  sedit  "s:@sbindir@:/usr/sbin:"  alsactl/90-alsa-restore.rules.in  &&

  default_build &&

  install -m0644 $SCRIPT_DIRECTORY/40-alsa-mixer.rules \
                 /etc/udev/rules.d/

) > $C_FIFO 2>&1
