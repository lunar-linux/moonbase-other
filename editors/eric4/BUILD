(

  . /etc/profile.d/qt4.rc  &&
  . /etc/profile.d/kde4.rc &&

  sedit "s/usr\/local\/bin/usr\/bin\//" install.py  &&
  prepare_install  &&
  echo "yes" | python install.py
        
) > $C_FIFO 2>&1
