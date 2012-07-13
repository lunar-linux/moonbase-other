(

  sedit "s:/usr/share/misc:/usr/share/games:" wtf &&

  prepare_install               &&
  cat acronyms.comp >> acronyms &&

  install -m755 -D wtf /usr/games/wtf                  &&
  install -m0644 -D acronyms /usr/share/games/acronyms &&
  install -m0644 -D wtf.6 /usr/share/man/man6/wtf.6

) > $C_FIFO 2>&1
