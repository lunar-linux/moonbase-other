(

  sedit "s/ACRONYMDB\:\-\/usr\/share\/misc\/acronyms/ACRONYMDB\:\-\/usr\/share\/games\/acronyms/" wtf &&
  prepare_install &&
  # YMMV but i prefer it this way ^^)
  mkdir -p /usr/share/games /usr/share/man/man6
  cat acronyms.comp >> acronyms &&
  install -m755 wtf /usr/games/ &&
  install -m0644 acronyms /usr/share/games/ &&
  install -m0644 wtf.6 /usr/share/man/man6/

) > $C_FIFO 2>&1
