(

  default_config &&
  sedit "s:-Os -g::" Makedefs &&
  sedit "s:-fstack-protector::" Makedefs &&
  default_make &&

  if [ -e /etc/init.d/cups ] ; then
    rm -f /etc/init.d/cups
  fi &&

  if ! module_installed cups-filters ; then
    if [ "$CUPS_FILTERS" == "y" ] ; then
      lin cups-filters
    fi
  fi

) > $C_FIFO 2>&1
