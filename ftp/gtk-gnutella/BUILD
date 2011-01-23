(

  if [ "$CONFIG_NLS" == "n" ]; then
    OPTS+=" -U d_enablenls"
  fi

  # shoot metaconfig in the head please:
  ./Configure -ders\
              -D gtkversion=2 \
              -D prefix=/usr \
              -D installbin=/usr/bin \
              -D remotectrl=y \
              $OPTS &&
  default_make 

) > $C_FIFO 2>&1
