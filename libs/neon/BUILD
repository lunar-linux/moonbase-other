# setting the ssl option
if in_depends $MODULE openssl; then
  OPTS+=" --with-ssl=openssl --enable-threadsafe-ssl"
elif in_depends $MODULE gnutls; then
  OPTS+=" --with-ssl=gnutls"
else
  OPTS+=" --without-ssl"
fi &&

# setting the xml renderer option (forced without, since
# unfortunately there is no --with-xml=foo like with ssl
if in_depends $MODULE libxml2; then
  OPTS+=" --with-libxml2 --without-expat"
  elif in_depends $MODULE gnutls && module_installed expat; then
  OPTS+=" --with-expat --without-libxml2"
else
  OPTS+=" --without-libxml2 --without-expat"
fi &&

if module_installed ca-certificates; then
  OPTS+=" --with-ca-bundle=/etc/ssl/certs/ca-certificates.crt"
fi &&

OPTS+=" --enable-shared --disable-static" &&

default_build
