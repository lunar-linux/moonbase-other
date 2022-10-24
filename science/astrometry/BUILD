  sed -e 's/NETPBM_INC\ ?=/NETPBM_INC\ ?=\ -I\/usr\/include\/netpbm/g' -i util/makefile.netpbm &&
  sed -e 's/-L.\ -lnetpbm/-L\/usr\/lib\ -lnetpbm/g' -i util/makefile.netpbm &&
  export _pyver=$(python -c 'import sys; print("%d.%d" % sys.version_info[:2])') &&

  PY_VER=`lvu version python|cut -d. -f1-2` &&

  make -C util config &&
  make SYSTEM_GSL=yes all &&
  make SYSTEM_GSL=yes py &&
  make SYSTEM_GSL=yes extra &&

  prepare_install &&

  export INSTALL_DIR=/usr  &&
  export DOC_INSTALL_DIR=/usr/share/doc/astrometry &&
  export BIN_INSTALL_DIR=/usr/bin &&
  export DATA_INSTALL_DIR=/usr/share/astrometry/data &&
  export LIB_INSTALL_DIR=/usr/lib &&
  export EXAMPLE_INSTALL_DIR=/usr/share/astrometry/examples &&
  export ETC_INSTALL_DIR=/etc/astrometry &&
  export PY_BASE_INSTALL_DIR=/usr/lib/python${PY_VER}/dist-packages/astrometry.net &&
  export PY_BASE_LINK_DIR=../lib/python${PY_VER}/site-packages/astrometry \
  export DATA_FINAL_DIR=/usr/share/astrometry &&

# They stomp on those provided by cfitsio and astormetry depends
# on cfitsio so we just prevent them being build
  sedit 's:imcopy::' solver/Makefile &&
  sedit 's:fitscopy::' solver/Makefile &&

  default_make &&

# lunar fix says its missing even though its not
  install -Dm755 plot/plotann.py /usr/bin/plotann.py &&  

  mkdir -p /usr/share/astrometry/data &&
  sed -e "s|/usr/share/astrometry|/usr/share/astrometry/data|" -i /etc/astrometry/astrometry.cfg
