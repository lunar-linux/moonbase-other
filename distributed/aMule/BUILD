(

# Removing a redundant wxFont.
  sedit "s|::wxFont||"  src/utils/wxCas/src/wxcasframe.cpp &&

  OPTS+=" --disable-debug \
              --enable-wxcas \
              --enable-cas \
              --enable-ccache"  &&

  default_build

) > $C_FIFO 2>&1
