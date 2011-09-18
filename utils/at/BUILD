(

  mkdir  -p  /var/spool/atjobs                                   &&
  sedit "s/\$(prefix)\/doc/\$(prefix)\/share\/doc/" Makefile.in  &&
  prepare_install                                                &&
  default_build                                                  &&
  [  -e  /etc/at.deny  ]  ||  cp  at.deny   /etc

) > $C_FIFO 2>&1
