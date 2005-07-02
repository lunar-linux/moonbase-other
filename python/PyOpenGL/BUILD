(
 sedit s/"build_togl=1"/"build_togl=0"/ $SOURCE_DIRECTORY/config/linux.cfg
 python setup.py build &&
 prepare_install       &&
 python setup.py install
) > $C_FIFO 2>&1

