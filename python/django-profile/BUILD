(

  # This has to be removed in future releases which might ship
  # a setup script on their own
  cp $SCRIPT_DIRECTORY/setup.py $SOURCE_DIRECTORY &&

  python setup.py config &&
  prepare_install && 
  python setup.py install

) > $C_FIFO 2>&1
