(

  # Now lets do the PAM stuff the proper way
  if module_installed Linux-PAM; then
    OPTS+=" --with-pam --without-shadow"
  fi

  OPTS+=" --without-kerberos \
          --with-dpms-ext \
          --with-xf86vmode-ext \
          --with-xf86gamma-ext \
          --with-proc-interrupts \
          --enable-locking"

  default_build  &&

  rm -fR /xscreensaver

) > $C_FIFO 2>&1
