(

  if [ -f src/Makefile ]; then
    message "${MESSAGE_COLOR}Makefile's detected, doing make distclean before compiling${DEFAULT_COLOR}" &&
    ./configure &&
    make distclean
  fi &&

  ./configure --platform linux-g++        \
              --prefix /usr               \
              --install /usr/bin/install  \
              $OPTS                      &&

  make             &&
  if which python 2> /dev/null 1>&2; then
     make docs
  fi               &&
  prepare_install  &&
  make install     &&

# I have notice with some apps (dirac) comes to mind, make notice during make
# the /usr/share/doc/apr/docs/doxygen.conf needs to be updated. This takes
# care of that.

  doxygen -u /usr/share/doc/apr/docs/doxygen.conf

) > $C_FIFO 2>&1
