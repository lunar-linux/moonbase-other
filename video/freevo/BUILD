(
   sedit 's/Numeric/numpy/g' src/main.py &&
   prepare_install &&
   python setup.py install &&
   install local_conf.py.example /usr/share/freevo
) > $C_FIFO 2>&1
