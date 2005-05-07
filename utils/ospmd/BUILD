( 
  # Don't build the gui, sucks anyhow
  sedit "s:gui::g" Makefile &&
  # Have the config file fit lunars config system
  sedit 's:/var/ospmd.conf:/etc/config.d/ospmd.conf:g' ospmd/ospmd.cpp

  make                      &&
  prepare_install           &&
  cd ospmd                  &&
  install -m 550 ospmd /sbin/ &&

  if [ ! -e /etc/config.d/ospmd.conf ]; then
    install -m 644 $SCRIPT_DIRECTORY/ospmd.conf /etc/config.d/
  fi 
  
) > $C_FIFO 2>&1
