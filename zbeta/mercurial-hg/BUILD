(

  prepare_install  &&
  python setup.py install --force &&
  cp -p contrib/hgk contrib/hgdiff /usr/bin &&
  gather_docs CONTRIBUTORS PKG-INFO hgweb*.cgi doc/*.html doc/*.txt

) > $C_FIFO 2>&1
