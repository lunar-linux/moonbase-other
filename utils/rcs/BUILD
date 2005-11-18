# Quick note:
# RCS doesn't like to be compiled as root, as the make is
# doing several of the tests, and these tests need to be executed
# as a non-root user :(
# that's the reason for the chown & su to user operator!!!!

(

  chown   -R  operator  .              &&
  su operator  -c  "./configure --prefix=/usr"  && 
  su operator  -c  make                         &&
  prepare_install                          &&
  make    install

) > $C_FIFO 2>&1
