(

  default_build  &&

  if [[ "$MAKE_CONFS" == "y" ]]; then
    make samples
  fi &&

  if [[ "MAKE_PROGDOCS" == "y" ]]; then
    make progdocs
  fi 

) > $C_FIFO 2>&1
