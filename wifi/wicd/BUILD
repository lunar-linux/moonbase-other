(

  patch_it $SOURCE_CACHE/$SOURCE2 1  &&

  python setup.py configure  &&
  python setup.py build      &&
  prepare_install            &&
  python setup.py install    &&
  install -m644 $SCRIPT_DIRECTORY/wicd.desktop /usr/share/applications/

) > $C_FIFO 2>&1
