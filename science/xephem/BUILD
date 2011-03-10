(

  patch_it $SOURCE_CACHE/$SOURCE2 0  &&

  # Make the makefiles obey our CFLAGS!
  sedit "s:^CFLAGS[ ]*=\(.*\)-O2\(.*\):CFLAGS= \1 \2 $CFLAGS:" libastro/Makefile
  sedit "s:^CFLAGS[ ]*=\(.*\)-O2\(.*\):CFLAGS= \1 \2 $CFLAGS:" libip/Makefile
  sedit "s:^CFLAGS[ ]*=\(.*\)-O2\(.*\):CFLAGS= \1 \2 $CFLAGS:" libjpegd/Makefile
  sedit "s:^CFLAGS[ ]*=\(.*\)$(CLDFLAGS)\(.*\):CFLAGS=\1 \2:" GUI/xephem/Makefile

  # Get with the making
  for sdir in libastro libip liblilxml libjpegd GUI/xephem; do
    cd $SOURCE_DIRECTORY/$sdir &&
    make
  done  &&

  prepare_install &&
  install -m0755 $SOURCE_DIRECTORY/GUI/xephem/xephem $MODULE_PREFIX/bin
  for sdir in auxil catalogs fifos fits help help/png; do
    mkdir -p /opt/xephem/$sdir &&
    cp $SOURCE_DIRECTORY/GUI/xephem/$sdir/* /opt/xephem/$sdir
  done &&

  echo "XEphem.ShareDir: /opt/xephem" > XEphem &&
  install -m0644 XEphem /etc/X11/app-defaults/

) > $C_FIFO
