(

# Find the oldest gecko on a machine and use it as base
  if module_installed seamonkey ; then
  GECKO_HOME=/usr/lib/seamonkey-$(module_version seamonkey)
  elif module_installed firefox ; then
  GECKO_HOME=/usr/lib/firefox-devel/$(module_version firefox)/sdk
  fi  &&
  message "Using $GECKO_HOME"

  OPTS="$OPTS  \
       --enable-gmp  \
       --with-gecko-sdk=$GECKO_HOME"  &&
  default_build

) > $C_FIFO 2>&1
