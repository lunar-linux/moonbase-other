(

  cd src

  sedit "s/OPTIMIZATIONS    =/OPTIMIZATIONS    = $CXXFLAGS/" build/makefile

  if  module_installed  libpng;  then
     echo "Enabling snapshot support ..."
     sedit "s/# SNAPSHOT_SUPPORT = 1/SNAPSHOT_SUPPORT = 1/" build/makefile
  fi

  ( cd build && make linux ) &&

  prepare_install &&
 
  install -m0755 build/stella /usr/games/stella  &&
  install -m0644 emucore/stella.pro /etc/
  
) > $C_FIFO 2>&1
