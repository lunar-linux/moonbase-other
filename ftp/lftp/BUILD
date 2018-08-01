# setting the ssl option
if in_depends $MODULE openssl; then
  OPTS+=" --with-openssl --without-gnutls"
elif in_depends $MODULE gnutls; then
  OPTS+=" --with-gnutls --without-openssl"
else
  OPTS+=" --without-openssl --without-gnutls"
fi &&

OPTS+=" --without-included-regex"

default_build
