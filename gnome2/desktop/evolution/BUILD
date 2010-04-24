(

  #PST import support is disabled until I can find the correct library
  OPTS+=" --without-weather --disable-nm --disable-pst-import"  &&

  default_build

#  if ! grep -q '/usr/lib/bonobo/servers' /etc/bonobo-activation/bonobo-activation-config.xml ; then
#    sedit "s:<searchpath>:<searchpath>\n\t<item>/usr/lib/bonobo/servers</item>:" /etc/bonobo-activation/bonobo-activation-config.xml
#  fi

) > $C_FIFO 2>&1
