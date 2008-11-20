(

  prepare_install  &&
  
  cp -f $SCRIPT_DIRECTORY/init.d/laptop-mode  $SOURCE_DIRECTORY/etc/init.d/  &&
  INIT_D="none"         &&
  MAN_D=/usr/share/man  &&
  ACPI=auto             &&
  PMU=auto              &&
  APM=auto              &&
  
  ./install.sh
 
) > $C_FIFO 2>&1
