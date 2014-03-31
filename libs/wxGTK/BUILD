(

  if [[ $UCODE == "y" ]]; then
    OPTS+=" --enable-unicode"
  fi  &&

  ./configure   --build=$BUILD     \
                --prefix=/usr      \
                --with-gtk         \
                --enable-shared    \
                --enable-optimise  \
                $OPTS             &&
  default_make

) > $C_FIFO 2>&1
