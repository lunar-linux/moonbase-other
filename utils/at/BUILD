(

  patch_it $SOURCE_CACHE/$SOURCE2 1 &&

  mkdir  -p  /var/spool/atjobs                                   &&
  sedit "s/\$(prefix)\/doc/\$(prefix)\/share\/doc/" Makefile.in  &&
  default_build                                                  &&
  [  -e  /etc/at.deny  ]  ||  cp  at.deny   /etc

) > $C_FIFO 2>&1
