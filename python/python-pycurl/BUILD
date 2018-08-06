if in_depends $MODULE openssl || in_depends $MODULE libressl; then
  export PYCURL_SSL_LIBRARY="openssl"
fi &&
OPTS+=" -O1"
make &&
default_python3_build
