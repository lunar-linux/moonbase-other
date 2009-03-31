(

  . /etc/profile.d/qt4.rc &&
  python ./setup.py build &&
  prepare_install  &&
  python ./setup.py easy_install -U mechanize

) > $C_FIFO 2>&1
