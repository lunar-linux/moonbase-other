(

  sedit "s:/tmp/netpbm:$(pwd -P)/BUILD:g" Makefile.config.in buildtools/installnetpbm.pl doc/README.DJGPP  &&

  # first ENTER to begin
  IACT="\n"                                             &&

  # platform
  IACT="${IACT}gnu\n"                                   &&

  # build type (regular or merge)
  IACT="${IACT}regular\n"                               &&

  # shared linked
  IACT="${IACT}shared\n"                                &&

  # build static libs, too
  IACT="${IACT}y\n"                                     &&

  # just ENTER on inttypes.h
  IACT="${IACT}\n"                                      &&

  # optional dependency %JPEG
  if [[ $OPTS = *USE_JPEG* ]]; then
    IACT="${IACT}libjpeg.so\n"
    IACT="${IACT}default\n"
  else
    IACT="${IACT}none\n"
  fi                                                    &&

  # optional dependency tiff
  if [[ $OPTS = *USE_TIFF* ]]; then
    IACT="${IACT}libtiff.so\n"
    IACT="${IACT}default\n"
  else
    IACT="${IACT}none\n"
  fi                                                    &&

  # optional dependency zlib
  if [[ $OPTS = *USE_ZLIB* ]]; then
    IACT="${IACT}libz.so\n"
    IACT="${IACT}default\n"
  else
    IACT="${IACT}none\n"
  fi                                                    &&

  # optional dependency libX11
  if [[ $OPTS = *USE_X11* ]]; then
    IACT="${IACT}/usr/X11R6/lib/libX11.so\n"
    IACT="${IACT}default\n"
  else
    IACT="${IACT}none\n"
  fi                                                    &&

  # no svgalib
  IACT="${IACT}none\n"                                  &&

  # last newline for accepting default doc URL
  IACT="{$IACT}\n"                                      &&


  # FINALLY pipe the interactive string to configure
  echo  -e  "${IACT}"  |  ./configure                   &&

#exit 5;

  sedit "s/^CFLAGS =/CFLAGS = -fPIC /" Makefile.config  &&

  make                                                  &&
  make package                                          &&
  prepare_install                                       &&

  echo -e "$(pwd -P)/BUILD
/usr
/usr/bin
/usr/lib
N
/usr/lib
/usr/lib
/usr/include
/usr/share/man
N
" | ./installnetpbm  &&

  # Fix documentation layout and permissions
  mv doc/* .  &&
  rmdir doc  &&
  chmod 644 INSTALL README* USERDOC  &&
  gather_docs USERDOC

) > $C_FIFO 2>&1
