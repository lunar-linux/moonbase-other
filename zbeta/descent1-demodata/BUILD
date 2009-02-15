(

  unarj e DESCENT1.SOW  &&
  mv descent.pig{,1}    &&
  unarj e DESCENT2.SOW  &&
  mv descent.pig{,2}    &&
  cat descent.pig{1,2} > descent.pig &&
  
  # Stop Lunar from thinking INSTALL.EXE is documentation!
  rm INSTALL.EXE &&

  prepare_install &&
  # Use the "Data" dir, to prevent conflict with the full version files
  mkdir -p /usr/share/games/d1x-rebirth/Data &&
  cp descent.{b50,hog,m50,phx,pig} /usr/share/games/d1x-rebirth/Data/ &&
  gather_docs orderfrm.txt readme.txt refcard.txt
  
) > $C_FIFO 2>&1 

