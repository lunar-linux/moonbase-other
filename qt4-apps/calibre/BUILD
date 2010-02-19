(

  . /etc/profile.d/qt4.rc &&

  python setup.py build &&

# Fix the depreciated warning about SYSFS and udev.
  sedit "s:SYSFS:ATTR:g" src/calibre/linux.py &&
  sedit "s:BUS:SUBSYSTEM:g" src/calibre/linux.py &&

  prepare_install  &&

  python setup.py install .

) > $C_FIFO 2>&1
