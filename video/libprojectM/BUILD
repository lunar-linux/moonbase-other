(

# Yeah, I know it looks redundant to specify the libusb path BUT
# it's configure script cannot find it otherwise.
# In fact ifp.h does not get built unless ALL these are specified.

  ./configure    --prefix=/usr      \
                 --enable-examples  \
                 --with-libusb=/usr \
                 --with-kmodule=/usr/src/linux &&

  default_make

) > $C_FIFO 2>&1
