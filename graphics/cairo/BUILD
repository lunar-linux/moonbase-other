(

  patch_it $SOURCE_CACHE/$SOURCE2 1  &&
  # see https://bugs.freedesktop.org/show_bug.cgi?id=29092
  patch_it $SOURCE_CACHE/$SOURCE3 1  &&

  OPTS+=" --disable-static"  &&

  if in_depends $MODULE qt4 ; then
    . /etc/profile.d/qt4.rc
  fi &&

  if in_depends $MODULE libX11 ; then
    # tee is required by firefox 4 when compiled with system cairo, and doesn't otherwise make any difference
    OPTS+=" --enable-tee"
  fi  &&

  if [ "`get_module_config DOCS`" = "n" ] ; then
    sedit 's/SUBDIRS = src doc util/SUBDIRS = src util/g' Makefile.in
  fi  &&

  # LIBS is needed for cairo-sphinx and others with --as-needed
  LIBS="-lstdc++" \
  default_build

) > $C_FIFO 2>&1
