(
  cd scripts       &&
  ./build_qcad.sh  &&
  
 prepare_install            &&
 mkdir -p /opt/lunar/qcad   &&
 cd $SOURCE_DIRECTORY/qcad  &&
 cp -rv qcad doc examples fonts patterns qm scripts /opt/lunar/qcad
  
) > $C_FIFO 2>&1
