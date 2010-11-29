(

# This fixes a Xlib.h conflicts causing the build to fail. Revisit on next bump.
  sed -i "3i #ifdef _X11_XLIB_H_ \n #define _XLIB_H_ \n #endif" pTk/Xlib.h &&

  perl Makefile.PL  &&
  default_make

) > $C_FIFO 2>&1
