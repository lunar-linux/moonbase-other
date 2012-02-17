(

  sedit "s:/usr/local:/usr:" SConstruct &&
  sedit "s:/usr/local:/usr:" config/linux2-config.py &&

# Some jiggling is needed if your are running kernels 3.x
  if [[ `uname -r | cut -c 1` == "3" ]] ; then
    cp config/linux2-config.py config/linux3-config.py &&
    sedit "s:linux2:linux3:g" SConstruct
  fi &&

  scons arch=$CPU  &&

  prepare_install   &&

  scons arch=$CPU install

) > $C_FIFO 2>&1
