(

  sedit 's:(localstatedir)/locatedb:(localstatedir)/cache/locate/locatedb:g' locate/Makefile.in                                 &&
  sedit 's:PRUNEPATHS="/tmp /usr/tmp /var/tmp /afs":PRUNEPATHS="/tmp /usr/tmp /var/tmp /afs /proc":g' locate/updatedb.sh   &&
 
  default_build                            &&
  mkdir -p /car/cache/locate               &&
  if [ -f /var/cache/locate ] ; then
    mv /var/cache/locate /var/cache/locatedb
  fi

) > $C_FIFO 2>&1
