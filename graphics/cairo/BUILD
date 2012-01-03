(

  patch_it $SOURCE_CACHE/$SOURCE2 1  &&

  OPTS+=" --disable-static"  &&

  if ind_depends $MODULE qt4 ; then
    . /etc/profile.d/qt4.rc
  fi &&

  if in_depends $MODULE libX11 ; then
    # tee is required by firefox 4 when compiled with system cairo, and doesn't otherwise make any difference
    OPTS+=" --enable-tee"
  fi  &&

  if [ "`get_module_config DOCS`" = "n" ] ; then
    sedit 's/SUBDIRS = src doc util/SUBDIRS = src util/g' Makefile.in
  fi  &&

  default_build

) > $C_FIFO 2>&1
