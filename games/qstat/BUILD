(

  default_build                                        &&
  mkdir -p /usr/share/qstat/template                   &&
  install -m755 template/* /usr/share/qstat/template   &&
  gather_docs qstatdoc.html template contrib.cfg

) > $C_FIFO 2>&1
