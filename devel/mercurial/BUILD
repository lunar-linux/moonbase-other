(

  prepare_install  &&
  python setup.py install --force &&
  cp -p contrib/hgk contrib/hgdiff /usr/bin &&
  gather_docs CONTRIBUTORS PKG-INFO hgweb*.cgi doc/*.html doc/*.txt &&
  cd doc &&
  install -m 644 hg.1 /usr/share/man/man1 &&
  install -m 644 hgignore.5 hgrc.5 /usr/share/man/man5

) > $C_FIFO 2>&1
