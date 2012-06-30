(

  cp unmaintained/autogen.sh . &&
  chmod 755 autogen.sh &&

# autogen tanks with our version of automake.
  sed -i '/^AM_C_PROTOTYPES$/d' makefiles/configure.in &&

  ./autogen.sh  &&

  default_build

) > $C_FIFO 2>&1
