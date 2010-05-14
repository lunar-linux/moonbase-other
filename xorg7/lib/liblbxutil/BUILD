(
  . /etc/profile.d/x11r7.rc &&

  sed -e '/lbxbuf.h/d' -e '/lbximage.h/d' -e '/lbxbufstr.h/d' -i src/Makefile.*
  default_build

) > $C_FIFO 2>&1
