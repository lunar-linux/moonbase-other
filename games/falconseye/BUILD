(

# sedit  "s:/usr/games/lib/nethackdir:/var/lock:"  include/unixconf.h  &&
# sedit  "s:/usr/games/lib/nethackdir:/var/lib/games/nethack:"  include/config.h       &&

  sedit  "s:/usr/local/bin/timidity -idqq %s:/usr/bin/playmus -r 44100 %s:"  \
         win/jtp/gamedata/config/jtp_opts.txt

  sedit   "s/-O2 -fomit-frame-pointer/$CFLAGS/"     \
          sys/unix/Makefile.src                     &&

  sh    sys/unix/setup.sh                           &&
  make  all                                         &&
  prepare_install                                   &&
  make  GAMEDIR=/usr/games/lib/nethackdir  install  &&
  install  -m 775  sys/unix/nethack.sh              \
                   /usr/games/falconseye

) > $C_FIFO 2>&1
