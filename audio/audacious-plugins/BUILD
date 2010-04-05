(

  # Shut up tedious message:  LASTFM: (cleanup) Cleanup finished
  sedit 's:g_print("LASTFM\: (cleanup) Cleanup finished\\n");::' src/lastfm/lastfm.c  &&
  sedit 's:jack_free:jack_Free:' src/jack/jack.c  &&

  OPTS+=" --enable-ipv6"  &&

  default_build

) > $C_FIFO 2>&1
