(
  make user        &&
  prepare_install  &&

  # Enable sensord building
  if [[ "$BSENSD" == "y" ]]; then
    make  PREFIX=/usr            \
          MANDIR=/usr/share/man  \
          PROG_EXTRA=sensord     \
          user_install
  else
    make  PREFIX=/usr            \
          MANDIR=/usr/share/man  \
          user_install
  fi

) > $C_FIFO 2>&1
