(

  # before load GNUSTEP variables
  source /opt/lunar/GNUstep/1/System/Makefiles/GNUstep.sh
  
  echo "ADDITIONAL_LIB_DIRS=/opt/lunar/GNUstep/1/System/Libraries/ix86/linux-gnu/gnu-gnu-gnu/libgnustep-base.so.1" >> Source/GNUmakefile.preamble 

  OPTS="$OPTS --prefix=/opt/lunar/GNUstep/1" &&

  devoke_installwatch &&
  default_config &&
  make &&
  invoke_installwatch &&
  prepare_install &&
  make install

) > $C_FIFO 2>&1
