(
# See http://web.archiveorange.com/archive/v/a7O9XzsYMZ7Ivf8H8oHV
# Fixes a make failure on an Undefined subroutine &main::Getopts.
  sed -i "7i use Getopt::Std;" msggen.pl &&
  sedit "s:\&Getopts:\&getopts:" msggen.pl &&

  # Fixes segfault when compiling docbook-utils
  patch_it $SOURCE2 1 &&
  patch_it $SOURCE3 1 &&

  # We need to remove the old catalog entries upon an update
  if module_is_expired $MODULE ; then
         set_module_config OLD_VER "`installed_version $MODULE`"
  fi &&

  CATALOGDIR="/usr/share/sgml/$MODULE-$VERSION" &&
  PTEXTD="$CATALOGDIR/pubtext" &&

  OPTS+=" --enable-http --disable-static --enable-default-catalog=/etc/sgml/catalog     \
          --enable-default-search-path=/usr/share/sgml"   &&

  default_build &&

  if ! [ -d "$CATALOGDIR" ]; then 
       mkdir -p $CATALOGDIR
  fi                                                         &&
  cp -r pubtext   $CATALOGDIR                                &&
  ln -sf $PTEXTD/html.soc $PTEXTD/catalog                    &&
  cp -r dsssl/*   $CATALOGDIR                                &&
  cp -r testsuite $CATALOGDIR                                &&
  cp -r contrib   $CATALOGDIR                                &&
  cp -r unicode   $CATALOGDIR                                &&
  cp -r develdoc  $CATALOGDIR                                &&
  ln -sf `which openjade` /usr/bin/jade

) > $C_FIFO 2>&1
