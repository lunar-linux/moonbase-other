(

  sedit 's:(localstatedir)/locatedb:(localstatedir)/cache/locate/locatedb:g' locate/Makefile.in                                 &&
  sedit 's:PRUNEPATHS="/tmp /usr/tmp /var/tmp /afs":PRUNEPATHS="/tmp /usr/tmp /var/tmp /afs /proc":g' locate/updatedb.sh   &&
 
  default_build                            &&
  mkdir -p /var/cache/locate               &&
  if [ -f /var/cache/locatedb ] ; then
    mv /var/cache/locatedb /var/cache/locate
  fi

) > $C_FIFO 2>&1
