(

#  if in_depends $MODULE gnutls ; then
    # Prevent crash when using print preview in firefox4
    # http://www.cups.org/str.php?L3606
    # https://bugzilla.redhat.com/show_bug.cgi?id=607159
    # https://bugzilla.mozilla.org/show_bug.cgi?id=573039
    # configure warns: GNU TLS cannot be made thread-safe
    #OPTS+=" --disable-threads"
#  fi &&

  default_config &&
  sedit "s:-Os -g::" Makedefs &&
  sedit "s:-fstack-protector::" Makedefs &&
  default_make &&

  if [ -e /etc/init.d/cups ] ; then
    rm -f /etc/init.d/cups
  fi

) > $C_FIFO 2>&1
