(

#  make  -f scripts/makefile.linux  prefix=/usr  &&
#  make  -f scripts/makefile.gcmmx  prefix=/usr  &&
#  prepare_install              
#  make  -f scripts/makefile.linux  prefix=/usr  install

if [ "x`arch`" == "xalpha" ]; then
  cp scripts/makefile.linux ./makefile
else
 cp scripts/makefile.gcc ./makefile
fi
make prefix=/usr
#
if [ "x`arch`" != "xalpha" ]; then
  cp scripts/makefile.gcmmx ./makefile
fi
sedit "s/-@if \[ ! -d \$(INCPATH)\//#$\0/" makefile
sedit "s/cp png.h pngconf.h \$(INCPATH)\/\$(LIBNAME)/cp png.h pngconf.h \$(INCPATH)/" makefile
sedit "s/-@\/bin\/rm -f \$(INCPATH)/#$\0/g" makefile
sedit "s/ln -sf \$(INCPATH)\/\$(LIBNAME) \$/#$\0/" makefile
sedit "s/chmod 644 \$(INCPATH)\/\$(LIBNAME)\/png\.h \$(INCPATH)\/\$(LIBNAME)\/pngconf\.h/chmod 644 \$(INCPATH)\/png\.h \$(INCPATH)\/pngconf\.h/" makefile
sedit "s/\$(prefix)\/man/\$(prefix)\/share\/man/g" makefile
sedit "s/\$(DM)\/share\//\$(DM)\//g" makefile
prepare_install
make prefix=/usr install

) > $C_FIFO 2>&1
