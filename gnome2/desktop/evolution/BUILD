(

  OPTS+=" --disable-nm"  &&

  default_build

#  if ! grep -q '/usr/lib/bonobo/servers' /etc/bonobo-activation/bonobo-activation-config.xml ; then
#    sedit "s:<searchpath>:<searchpath>\n\t<item>/usr/lib/bonobo/servers</item>:" /etc/bonobo-activation/bonobo-activation-config.xml
#  fi

) > $C_FIFO 2>&1
