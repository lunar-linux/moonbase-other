(

if module_installed linux-beta || module_installed linux-2.6 ; then
  KO="--with-kernel-support"
else
  KO="--with-linux=/usr/src/linux"
fi

./configure --prefix=/usr \
            $KO           &&

default_make

) > $C_FIFO 2>&1
