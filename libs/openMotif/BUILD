# NOTE: this BUILD for 2.1.30 is signficantly more complex than the 2.2.2
#       version.  So DO NOT mess around here unless you really know what 
#       you are doing and have tested your changes throughly.  nedit and
#       xpdf BOTH use openMotif.  Terry Chan
(

  cd config/cf/OpenGroup                   &&
  cp Imake.* Library.tmpl linux.cf ..      &&
  cp lnxLib.* noop.rules Threads.tmpl ..   &&
  cp X11.* xf86.rules xfree86.cf ..        &&
  cd $SOURCE_DIRECTORY                     &&
  mkdir -p imports/x11                     &&
  cd imports/x11                           &&
  ln -s /usr/X11R6/bin bin                 &&
  ln -s /usr/X11R6/include include         &&
  ln -s /usr/X11R6/lib lib                 &&
  cd $SOURCE_DIRECTORY                     &&
  make World                               &&
  prepare_install                          &&
  make    install                          &&
  ldconfig

) > $C_FIFO 2>&1
