(
  qmake -o Makefile lincvs.pro &&
  make                         &&
  strip lincvs.bin             &&
  
  cp -f $SCRIPT_DIRECTORY/lincvs LinCVS/lincvs            &&
  cp -f $SCRIPT_DIRECTORY/start-ssh.sh tools/start-ssh.sh &&

  prepare_install &&
  make install    &&
  cp -Rp LinCVS /opt/lunar/
	
) > $C_FIFO 2>&1
