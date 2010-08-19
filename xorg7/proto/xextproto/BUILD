(

  . /etc/profile.d/x11r7.rc &&

  # Don't fail compilation:
  # xmlto: /usr/src/xextproto-7.1.2/specs/geproto.xml does not validate (status 3)
  OPTS+=" --without-xmlto" &&

  default_build

) > $C_FIFO 2>&1
