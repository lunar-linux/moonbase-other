if module_installed openssl; then
  export PYCURL_SSL_LIBRARY="openssl"
fi &&

make &&

python setup.py build $OPTS &&

prepare_install &&

python setup.py install
