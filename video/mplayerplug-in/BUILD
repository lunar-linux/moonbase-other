(

# Find the oldest gecko on a machine and use it as base
if module_installed seamonkey ; then
GECKO_HOME=/usr/lib/seamonkey-$(module_version seamonkey)
elif module_installed firefox2 ; then
GECKO_HOME=/usr/lib/firefox-$(module_version firefox2)
elif module_installed firefox ; then
GECKO_HOME=/usr/lib/firefox-$(module_version firefox)
fi &&

    OPTS="$OPTS \
          --enable-gmp \
          --with-mozilla-home=$GECKO_HOME" &&
    default_build

) > $C_FIFO 2>&1
