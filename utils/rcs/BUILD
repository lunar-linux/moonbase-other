# Quick note:
# RCS doesn't like to be compiled as root, as the make is
# doing several of the tests, and these tests need to be executed
# as a non-root user :(
# that's the reason for the chown & su to user bin!!!!

(

  chown   -R  bin:bin  .                   &&
  su bin  -c  "./configure --prefix=/usr"  && 
  su bin  -c  make                         &&
  prepare_install                          &&
  make    install

) > $C_FIFO 2>&1
