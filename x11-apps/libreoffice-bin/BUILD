(

  # not sure what this rpm is for, but its not there in 32bit OO, so I removed it
  #rm -rf userland &&
  LO_OPT_DIR="/opt/libreoffice${VERSION%.*}"


  message "${MESSAGE_COLOR}Unpacking base RPMs and installing...${DEFAULT_COLOR}" &&
  for pack in RPMS/*.rpm ; do rpm2cpio $pack > `basename $pack .rpm`.cpio ; done &&
  for pack in RPMS/desktop-integration/*freedesktop* ; do rpm2cpio $pack > `basename $pack .rpm`.cpio ; done &&
  for i in `ls *.cpio`; do cpio -idmuV < $i ;done &&

  prepare_install &&
  cp -dfR opt / &&
  cp -dfR usr / &&

  # Create some symlinks to /usr/bin
  ln -sf ${LO_OPT_DIR}/program/soffice /usr/bin/soffice &&
  ln -sf ${LO_OPT_DIR}/program/scalc /usr/bin/scalc &&
  ln -sf ${LO_OPT_DIR}/program/swriter /usr/bin/swriter &&
  ln -sf ${LO_OPT_DIR}/program/simpress /usr/bin/simpress &&
  ln -sf ${LO_OPT_DIR}/program/sbase /usr/bin/sbase &&
  ln -sf ${LO_OPT_DIR}/program/sdraw /usr/bin/sdraw &&
  ln -sf ${LO_OPT_DIR}/program/smath /usr/bin/smath 

) > $C_FIFO 2>&1
