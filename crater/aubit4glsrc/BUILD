OPTS+=" --prefix=$MODULE_PREFIX i\
        --enable-optimised"

default_build &&

echo "export AUBIT_INSTALL_DIR=\"${MODULE_PREFIX}\"" >> $SOURCE_DIRECTORY/aubit4gl.rc  &&
echo export PATH=\"'${PATH}':${MODULE_PREFIX}/bin\" >> $SOURCE_DIRECTORY/aubit4gl.rc  &&

install -m644 aubit4gl.rc /etc/profile.d/
