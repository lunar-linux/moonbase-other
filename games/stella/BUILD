(

  cd src

  sedit "s/OPTIMIZATIONS    =/OPTIMIZATIONS    = $CXXFLAGS/" build/makefile

  if  module_installed  libpng;  then
     echo "Enabling snapshot support ..."
     sedit "s/# SNAPSHOT_SUPPORT = 1/SNAPSHOT_SUPPORT = 1/" build/makefile
     # the following line fixes a compile error when snapshot support is enabled
     sedit "s/out->write(area, size);/out->write((char *) area, size);/" ui/common/Snapshot.cxx
  fi

  ( cd build && make linux-sdl ) &&

  prepare_install &&
 
  install -m0755 build/stella.sdl /usr/bin/stella                 &&
  install -m0644 emucore/stella.pro /etc/                         &&
  install -m0644 stellarc /etc/
  
) > $C_FIFO 2>&1
