(
  message ""
  message "This module will need to access a running Xserver during build !"
  message "Please open a new xterm and type \"xhost +localhost\" to give root access"
  message ""
  
  query "Press <Enter> to continue..." y
  
  export DISPLAY=:0.0
  
  default_build
  
) > $C_FIFO 2>&1
