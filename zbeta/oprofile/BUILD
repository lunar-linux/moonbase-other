(

if module_installed linux-beta ; then
  KO="--with-kernel-support"
else
  KO="--with-linux=/usr/src/linux"
fi

./configure --prefix=/usr \
            $KO           &&

make                      &&
prepare_install           &&
make install

) > $C_FIFO 2>&1
