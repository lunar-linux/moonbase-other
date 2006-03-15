(

  cd $SOURCE_DIRECTORY             &&
  prepare_install                  &&
  mkdir -p /opt/lunar/plugins      &&
  install -m755 libflashplayer.so \
	        flashplayer.xpt /opt/lunar/plugins &&

  gather_docs Readme.txt Readme.htm &&

  # We need to remove the tarball since its seemingly identical
  # to every release

  rm -f $SOURCE_CACHE/$SOURCE
  
) > $C_FIFO 2>&1
