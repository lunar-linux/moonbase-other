(
  if ! in_depends discover docbook-4.1 ; then
    patch_it $SOURCE2 0
  fi  &&

  if module_installed docbook-utils; then
    sedit 's:${DOCBOOKTOMAN}:docbook2man:g' doctools/docbook.mk
  else
    sedit 's:docbook-to-man:echo:' doctools/docbook.mk
  fi  &&

  OPTS+=" --disable-curl --enable-shared --disable-static"

  default_config  &&

  # hack the statics away
  sedit "s/all: discover discover-static/all: discover/g" discover/Makefile &&
  sedit "/\${INSTALL_PROGRAM} discover-static/d" discover/Makefile &&

  make  &&
  make check  &&
  prepare_install  &&

  rm -f /usr/sbin/discover-modprobe  &&

  make install  &&

  mv /usr/sbin/discover-modprobe /sbin/  &&
  ln -sf /sbin/discover-modprobe /usr/sbin/discover-modprobe  &&
  ln -sf ../init.d/discover /etc/rcS.d/S20discover

) > $C_FIFO 2>&1
