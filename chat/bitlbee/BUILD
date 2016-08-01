if in_depends $MODULE %OSSL; then
  OPTS+=" --ssl=openssl"
else
  OPTS+=" --ssl=gnutls"
fi &&

# systemdsystemunitdir=no is no because we want to install the unit files
# using the lunar way
OPTS+=" --etcdir=/etc/bitlbee --systemdsystemunitdir=no" &&
default_build &&
make install-etc
