(

  default_config   && 
  make             &&

  # make check on version 0.9.3 was cause issues on a few user machines.
  # Until the issues are cleared up (new version?) work around the issue
  # by not running make check... ~ v3rt1g0 (04-Jan-06)
  # make check       &&

  prepare_install  &&
  make install

) > $C_FIFO 2>&1
