(

  sedit "s/ACRONYMDB\:\-\/usr\/share\/misc\/acronyms/ACRONYMDB\:\-\/usr\/share\/games\/acronyms/" wtf &&
  prepare_install &&
  chown root.root * &&
  chmod +x wtf &&
  cp wtf /usr/games &&
  
  # YMMV but i prefer it this way ^^)
  cat acronyms.comp >> acronyms &&
  cp acronyms /usr/share/games &&
  cp wtf.6 /usr/share/man/man6/

) > $C_FIFO 2>&1
