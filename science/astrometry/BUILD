
  make SYSTEM_GSL=yes all py extra &&

  prepare_install &&

  export INSTALL_DIR=/usr  &&
  export DOC_INSTALL_DIR=/usr/share/doc/astrometry &&
  export BIN_INSTALL_DIR=/usr/bin &&
  export DATA_INSTALL_DIR=/usr/share/astrometry/data &&
  export LIB_INSTALL_DIR=/usr/lib &&
  export EXAMPLE_INSTALL_DIR=/usr/share/astrometry/examples &&
  export ETC_INSTALL_DIR=/etc/astrometry &&
  export PY_BASE_INSTALL_DIR=/usr/lib/python3.6/dist-packages/astrometry.net &&
  export PY_BASE_LINK_DIR=../lib/python3.6/site-packages/astrometry \
  export DATA_FINAL_DIR=/usr/share/astrometry &&

  make install &&

  mkdir -p /usr/share/astrometry/data &&

  sed -e "s|/usr/share/astrometry|/usr/share/astrometry/data|" -i /etc/astrometry/astrometry.cfg &&

  ln -sf /usr/lib/python3.6/dist-packages/astrometry.net/blind/plotann.py /usr/bin/plotann.py
