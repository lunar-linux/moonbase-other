(
  EQ_SSE=
  for A in ${XTRA[@]}; do
    case $A in
      SSE)  EQ_SSE='--enable-sse'
        ;;
      SSE2) EQ_SSE='--enable-sse2'
        ;;
    esac
  done

  ./configure  $EQ_SSE \
               --prefix=/usr                      \
               --sysconfdir=/etc                  \
               --localstatedir=/var               &&
  make	&&
  prepare_install &&
  make install

) > $C_FIFO 2>&1 
