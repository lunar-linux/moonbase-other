
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

# Stomps on cfitiso
  make &&
  rm solver/fitscopy solver/imcopy &&
  prepare_install &&
  make install &&

  mkdir -p /usr/share/astrometry/data &&
  sed -e "s|/usr/share/astrometry|/usr/share/astrometry/data|" -i /etc/astrometry/astrometry.cfg
