(

  cd $SOURCE_DIRECTORY    &&
  perl Makefile.PL        &&
  make                    &&
  make test               &&
  prepare_install         &&
  make install            &&
  razor-client            &&
  echo ""                 &&
  echo "As a regular user please run the command: razor-register -create to create a default config file in your home directory under ~/.razor." &&
  echo ""
  
) > $C_FIFO 2>&1
