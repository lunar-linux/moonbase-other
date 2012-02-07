(

  source /etc/profile.d/qt4.rc &&
  source /etc/profile.d/kde4.rc &&

  python setup.py install --prefix=/usr  &&
  prepare_install &&
  python setup.py install

) > $C_FIFO 2>&1
