( 

  patch  -p1  <  $SCRIPT_DIRECTORY/schewe1.patch   &&
  patch  -p4  <  $SCRIPT_DIRECTORY/pophal1.patch   &&
  patch  -p1  <  $SCRIPT_DIRECTORY/specht1.patch   &&
  patch  -p1  <  $SCRIPT_DIRECTORY/lemley1.patch   &&
  patch  -p1  <  $SCRIPT_DIRECTORY/tappin3a.patch  &&
  patch  -p1  <  $SCRIPT_DIRECTORY/tappin3b.patch  &&
  make                                             &&
  prepare_install                                  &&
  install -m 755 -o root bplay_gramo  /usr/bin     &&
  install -m 755 -o root brec_gramo   /usr/bin     &&
  install -m 755 -o root gramofile    /usr/bin    

) > $C_FIFO 2>&1
