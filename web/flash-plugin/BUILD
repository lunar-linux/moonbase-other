(

  cd $SOURCE_DIRECTORY             &&
  prepare_install                  &&
  mkdir -p /opt/lunar/plugins      &&
  cp *.xpt *.so /opt/lunar/plugins &&

  gather_docs Readme.txt Readme.htm
  
) > $C_FIFO 2>&1
