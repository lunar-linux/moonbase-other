(

  # before load GNUSTEP variables
  source /System/Makefiles/GNUstep.sh
  
  echo "ADDITIONAL_LIB_DIRS=/System/Libraries/ix86/linux-gnu/gnu-gnu-gnu/libgnustep-base.so.1" >> Source/GNUmakefile.preamble 

  devoke_installwatch &&
  default_config &&
  make &&
  invoke_installwatch &&
  prepare_install &&
  make install

) > $C_FIFO 2>&1
