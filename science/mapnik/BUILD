(

  python scons/scons.py configure PREFIX=/usr DEBUG=False &&
  python scons/scons.py &&

  prepare_install &&
  python scons/scons.py install 

) > $C_FIFO 2>&1
