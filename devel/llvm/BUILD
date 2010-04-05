(


  OPTS="$OPTS --enable-optimized --enable-assertions --enable-pic --enable-targets=host-only"

  default_build   &&

  prepare_install &&

  echo "export LLVM_DIR=\"${MODULE_PREFIX}\"" >> $SOURCE_DIRECTORY/llvm.rc  &&
  echo export PATH=\"'${PATH}':${MODULE_PREFIX}/bin\" >> $SOURCE_DIRECTORY/llvm.rc  &&
  echo export PKG_CONFIG_PATH=\"'${PKG_CONFIG_PATH}':${MODULE_PREFIX}/lib/pkgconfig\" >> $SOURCE_DIRECTORY/llvm.rc &&

  install -m644 llvm.rc /etc/profile.d/

) > $C_FIFO 2>&1
