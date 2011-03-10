(

  OPTS+=" --prefix=$MODULE_PREFIX --enable-optimised" &&

  default_build

  echo "export AUBIT_INSTALL_DIR=\"${MODULE_PREFIX}\"" >> $SOURCE_DIRECTORY/aubit4gl.rc  &&
  echo export PATH=\"'${PATH}':${MODULE_PREFIX}/bin\" >> $SOURCE_DIRECTORY/aubit4gl.rc  &&

  install -m644 aubit4gl.rc /etc/profile.d/

) > $C_FIFO 2>&1
