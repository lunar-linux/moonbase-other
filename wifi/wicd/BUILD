(

  python setup.py configure $OPTS    &&
  python setup.py build              &&
  prepare_install                    &&
  python setup.py install            &&
  install -m644 $SCRIPT_DIRECTORY/wicd.desktop /usr/share/applications/

) > $C_FIFO 2>&1
