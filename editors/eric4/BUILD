(

  . /etc/profile.d/qt4.rc
  . /etc/profile.d/kde4.rc

  prepare_install  &&
  sedit "s/usr\/local\/bin/usr\/bin\//" install.py  &&
  python install.py
        
) > $C_FIFO 2>&1
